package project.service.impl
;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import project.dao.UserDao;
import project.domain.Search;
import project.domain.User;
import project.domain.UserLikeArt;
import project.service.UserService;
import project.dao.UserLikeArtDao;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService{
  
  ///Field
  @Autowired
  @Qualifier("userDaoImpl")
  private UserDao userDao;
  
  
  @Autowired
  @Qualifier("userlikeArtDaoImpl")
  private UserLikeArtDao userLikeArtDao;
  
  
  public void setUserDao(UserDao userDao) { /** */
    this.userDao = userDao;
  }
  
  ///Constructor
  public UserServiceImpl() {
    System.out.println(this.getClass());
  }

  ///Method
  public void addUser(User user) throws Exception {
    userDao.addUser(user);
  }

  public User getUser(String userId) throws Exception {
    return userDao.getUser(userId);
  }

  public Map<String , Object > getUserList(Search search) throws Exception {
    List<User> list= userDao.getUserList(search);
    int totalCount = userDao.getTotalCount(search);
    
    Map<String, Object> map = new HashMap<String, Object>();
    map.put("list", list );
    map.put("totalCount", new Integer(totalCount));
    
    return map;
  }

  public void updateUser(User user) throws Exception {
    userDao.updateUser(user);
  }

  public boolean checkDuplication(String userId) throws Exception {
    boolean result=true;
    User user=userDao.getUser(userId);
    if(user != null) {
      result=false;
    }
    return result;
  }
  
  public void addlikeArtUser(UserLikeArt userLikeArt) throws Exception {
    userLikeArtDao.addUserLikeArt(userLikeArt);
  }
  
 public void deletelikeArtUser(UserLikeArt userLikeArt) throws Exception {
   userLikeArtDao.deleteUserLikeArt(userLikeArt);
    }

@Override
public UserLikeArt getLikeArt(UserLikeArt userLikeArt) throws Exception {
  // TODO Auto-generated method stub
  return userLikeArtDao.getLikeArt(userLikeArt);
}

@Override
public User getUserByEmail(String email) throws Exception {
  // TODO Auto-generated method stub
  return userDao.getUserByEmail(email);
}
    
  
}