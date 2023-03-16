import java.util.Collection;
import java.util.HashMap;
//数据层，封装数据（蛋糕）及其访问数据的相关方法
public class CakeDB {
    //蛋糕存放在map集合中
    private static HashMap<String,Cake> map = new HashMap();
    //初始化蛋糕数据
    static {
        map.put("1",new Cake("1","A类蛋糕"));
        map.put("2",new Cake("2","B类蛋糕"));
        map.put("3",new Cake("3","C类蛋糕"));
        map.put("4",new Cake("4","D类蛋糕"));
        map.put("5",new Cake("5","E类蛋糕"));
    }
    //获取所有蛋糕对象的方法
    public static Collection<Cake> getAll(){
        return  map.values();
    }
    //通过id获取对应蛋糕对象的方法
    public static Cake getCakeById(String id){
        return  map.get(id);
    }
}
