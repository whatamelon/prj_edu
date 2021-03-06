package poly.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.NoticeDTO;
import poly.dto.PagingDTO;
import poly.dto.UserDTO;
import poly.persistance.mapper.UserMapper;
import poly.service.IUserService;

@Service("UserService")
public class UserService implements IUserService {
	
	@Resource(name="UserMapper")
	private UserMapper userMapper;

	@Override
	public List<UserDTO> getUserList() {
		return (List<UserDTO>)userMapper.getUserList();
	}
	
	@Override
	public List<UserDTO> getUserList2(PagingDTO paging) {
		return (List<UserDTO>)userMapper.getUserList2(paging);
	}
	
	@Override
	public int getUserListTotalCount() {
		return userMapper.getUserListTotalCount();
	}
	
	//--------------------------------------------------------------------------------------------------
	
	@Override
	public int insertUser(UserDTO uDTO) throws Exception {
		return userMapper.insertUser(uDTO);
	}

	@Override
	public UserDTO login(UserDTO uDTO) throws Exception {
		return userMapper.login(uDTO);
	}

	@Override
	public UserDTO findid(UserDTO uDTO) throws Exception {
		return userMapper.findid(uDTO);
	}

	@Override
	public UserDTO findpw(UserDTO uDTO) throws Exception {
		return userMapper.findpw(uDTO);
	}

	
	@Override
	public int updateUser(UserDTO uDTO) throws Exception {
		System.out.println("********************************************************************************");
		System.out.println("usr_seq_no : " + uDTO.getUsr_seq_no());
		System.out.println("usr_id : " + uDTO.getUsr_id());
		System.out.println("usr_name : " + uDTO.getUsr_name());
		System.out.println("usr_birthdate : " + uDTO.getUsr_birthdate());
		System.out.println("password : " + uDTO.getPassword());
		System.out.println("usr_nickname : " + uDTO.getUsr_nickname());
		return userMapper.updateUser(uDTO);
	}

	@Override
	public int deleteUser(String usr_seq_no) throws Exception {
		return userMapper.deleteUser(usr_seq_no);
	}

	
}
