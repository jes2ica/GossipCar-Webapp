package action;

import java.net.URL;   

import org.junit.Test;

import net.sf.ehcache.Cache;  
import net.sf.ehcache.CacheManager; 
import net.sf.ehcache.Element;

public class EhcacheExample {
	@Test
	public void testF1() throws Exception {
		URL url = EhcacheExample.class.getClassLoader().getResource(
				"conf/ehcache.xml");
		CacheManager manager = new CacheManager(url);
		Cache cache1 = manager.getCache("sampleCache1");
		String key = "key1";
		String value = key.hashCode() + "";
		Element element1 = new Element(key, value);
		cache1.put(element1);
		System.out.println(cache1.get(key));
		manager.shutdown();
	}
}
