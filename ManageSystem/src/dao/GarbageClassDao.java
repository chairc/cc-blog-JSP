package dao;

import java.util.List;

import entity.GarbageClass;

public interface GarbageClassDao {

	public List<GarbageClass> searchgarbage(String name);

	public boolean addgarbage(GarbageClass gc);

	public List<GarbageClass> searchgarbageall();

	public boolean garbagevalidation(String searchgarbagename);

}
