package poly.service;

import java.util.HashMap;
import java.util.List;

import poly.dto.UserDTO;

public interface IUserService {
	public int insertUser(UserDTO uDTO) throws Exception;
}
