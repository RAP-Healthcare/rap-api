package io.github.xaphira.security.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import io.github.xaphira.feign.dto.security.MenuDto;
import io.github.xaphira.security.dao.MenuRepo;
import io.github.xaphira.security.entity.MenuEntity;

@Service("menuService")
public class MenuImplService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	@Qualifier("menuRepo")
	private MenuRepo menuRepo;
	
	@Value("${xa.locale}")
	private String locale;
	
	public Map<String, List<MenuDto>> loadAllMenuByRole(String role) throws Exception {
		List<MenuDto> allMenus = constructMenu(this.menuRepo.loadAllMenuByRole(role), false);
		return filterMenu(allMenus);
	}
	
	public Map<String, List<MenuDto>> loadAllMenuByRole(String role, Locale locale) throws Exception {
		List<MenuDto> allMenus = loadMenuByRole(role, locale.toLanguageTag());
		return filterMenu(allMenus);
	}
	
	public Map<String, List<MenuDto>> loadAllMenuByRole(String role, String locale) throws Exception {
		if(locale == null)
			return loadAllMenuByRole(role);
		try {
			locale = locale.split(",")[0];	
		} catch (Exception e) {
			return loadAllMenuByRole(role);
		}
		if(locale.equals(this.locale))
			return loadAllMenuByRole(role);
		List<MenuDto> allMenus = constructMenu(this.menuRepo.loadAllMenuByRoleI18n(role, locale), true);
		return filterMenu(allMenus);
	}
	
	public List<MenuDto> loadMenuByRole(String role, String type) throws Exception {
		return constructMenu(this.menuRepo.loadTypeMenuByRole(role, type), false);
	}
	
	public List<MenuDto> loadMenuByRole(String role, Locale locale, String type) throws Exception {
		return loadMenuByRole(role, locale.toLanguageTag(), type);
	}
	
	public List<MenuDto> loadMenuByRole(String role, String locale, String type) throws Exception {
		if(locale == null)
			return loadMenuByRole(role, type);
		try {
			locale = locale.split(",")[0];	
		} catch (Exception e) {
			return loadMenuByRole(role, type);
		}
		if(locale.equals(this.locale))
			return loadMenuByRole(role, type);
		return constructMenu(this.menuRepo.loadTypeMenuByRoleI18n(role, locale, type), true);
	}
	
	private Map<String, List<MenuDto>> filterMenu(List<MenuDto> menus) {
		List<MenuDto> mainMenus = new ArrayList<MenuDto>();
		List<MenuDto> extraMenus = new ArrayList<MenuDto>();
		menus.forEach(menuDto -> {
			if(menuDto.getType().equals("main")) {
				mainMenus.add(menuDto);
			} else {
				extraMenus.add(menuDto);
			}
		});
		/*List<MenuDto> mainMenus = menus.stream().filter(menuDto -> "main".equals(menuDto.getType())).collect(Collectors.toList());
		List<MenuDto> extraMenus = menus.stream().filter(menuDto -> "extra".equals(menuDto.getType())).collect(Collectors.toList());*/
		Map<String, List<MenuDto>> result = new HashMap<String, List<MenuDto>>();
		result.put("main", mainMenus);
		result.put("extra", extraMenus);
		return result;
	}
	
	private List<MenuDto> constructMenu(List<MenuEntity> menus, boolean i18n) {
		List<MenuDto> menuDtos = new ArrayList<MenuDto>();
		menus.forEach(menu->{
			if(menu.getLevel() == 0) {
				if(i18n)
					menuDtos.add(menu.toObjectI18n());
				else
					menuDtos.add(menu.toObject());
			}			
		});
		return menuDtos;
	}
	
}