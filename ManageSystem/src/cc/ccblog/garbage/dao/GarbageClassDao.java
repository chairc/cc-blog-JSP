package cc.ccblog.garbage.dao;

import java.util.List;

import cc.ccblog.entity.GarbageClass;

public interface GarbageClassDao {

	List<GarbageClass> searchgarbage(String name);

	boolean addgarbage(GarbageClass gc);

	List<GarbageClass> searchgarbageall();

	boolean garbagevalidation(String searchgarbagename);

}
