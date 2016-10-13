import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;

import com.xu.manager.bean.LoginUser;
import com.xu.manager.service.AccountService;

public class Data implements Runnable{
	
	@Autowired
	private AccountService accountService;
	public static void test() {
		Data ww = new Data();
		Thread tt = new Thread(ww);
		tt.start();
		

	}

	@Override
	public void run() {
		String loginName[] = {"xuguo1","xu2","zhangshan","wangba","lishi","wuli","shuju","xisi"};
		String saleName[] = {"廖大思","武安三","齐德红","葛浩","林德建","罗静","程红","廖大海","徐佳","胡建","大头","丽丽","阿拉斯","丹丽","红石","强哥"};
		String phone[] = {"223232323","18904059699","17934998595","374985990380","189388938839","27387493939","1232552","34363463"};
		String email[] = {"27898@qq.com","489589@qq.com","xuguo@126.com","34354@","weewre","2ewfwefw","23rewfef","wefef"};
		try{
			for(Long i = (long)0;i<100000;i++){
				LoginUser loginUser = new LoginUser();
				
				int Num =(int)(Math.random()*7);
				loginUser.setLoginName(loginName[Num]);
				loginUser.setName(saleName[Num]);
				loginUser.setEmail(email[Num]);
				loginUser.setPhone(phone[Num]);
				
				accountService.saveUser(loginUser);
			}
		}catch(Exception e){
			e.getStackTrace();
		}
	}

}