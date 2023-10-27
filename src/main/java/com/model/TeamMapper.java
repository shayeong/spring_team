package com.model;

import java.util.List;
import java.util.Map;

public interface TeamMapper {

	List<TeamDTO> list(Map map);

	int passcheck(Map map);

	int update(TeamDTO dto);

	TeamDTO read(int teamno);

	int delete(int teamno);

	void upcnt(int teamno);

	int create(TeamDTO dto);

	int total(Map map);

}
