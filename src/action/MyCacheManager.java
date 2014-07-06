package action;

import java.io.Serializable;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheException;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

public class MyCacheManager {
	private static MyCacheManager myCacheManager = null;
	private static CacheManager cacheManager = null;

	static void init() {
		try {
			if (cacheManager == null) {
				cacheManager = new CacheManager(MyCacheManager.class
						.getClassLoader().getResource("conf/ehcache.xml"));
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	private MyCacheManager() {
	};

	public static MyCacheManager getInstance() {
		if (myCacheManager == null) {
			myCacheManager = new MyCacheManager();
			init();
		}
		return myCacheManager;
	}

	// put the contents to cache
	public void put(String _cacheName, Serializable _key, Serializable _value) {
		Cache cache = cacheManager.getCache(_cacheName);
		Element element = new Element(_key, _value);
		cache.put(element);

	}

	// read from cache
	@SuppressWarnings("deprecation")
	public Serializable get(String _cacheName, Serializable _key)
			throws CacheException {
		Cache cache = cacheManager.getCache(_cacheName);
		Element element = cache.get(_key);
		if (element == null)
			return null;
		return  element.getValue();
	}
}
