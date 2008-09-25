/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GVolumeMonitor.html
 * outPack = gio
 * outFile = VolumeMonitor
 * strct   = GVolumeMonitor
 * realStrct=
 * ctorStrct=
 * clss    = VolumeMonitor
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_volume_monitor_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_volume_monitor_get
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gio.Mount
 * 	- gio.MountIF
 * 	- gio.Volume
 * 	- gio.VolumeIF
 * structWrap:
 * 	- GList* -> ListG
 * 	- GMount* -> MountIF
 * 	- GVolume* -> VolumeIF
 * 	- GVolumeMonitor* -> 
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.VolumeMonitor;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListG;
private import gio.Mount;
private import gio.MountIF;
private import gio.Volume;
private import gio.VolumeIF;



private import gobject.ObjectG;

/**
 * Description
 * GVolumeMonitor is for listing the user interesting devices and volumes
 * on the computer. In other words, what a file selector or file manager
 * would show in a sidebar.
 */
public class VolumeMonitor : ObjectG
{
	
	/** the main Gtk struct */
	protected GVolumeMonitor* gVolumeMonitor;
	
	
	public GVolumeMonitor* getVolumeMonitorStruct()
	{
		return gVolumeMonitor;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gVolumeMonitor;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GVolumeMonitor* gVolumeMonitor)
	{
		if(gVolumeMonitor is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gVolumeMonitor);
		if( ptr !is null )
		{
			this = cast(VolumeMonitor)ptr;
			return;
		}
		super(cast(GObject*)gVolumeMonitor);
		this.gVolumeMonitor = gVolumeMonitor;
	}
	
	/**
	 * Gets the volume monitor used by gio.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		// GVolumeMonitor* g_volume_monitor_get (void);
		auto p = g_volume_monitor_get();
		if(p is null)
		{
			throw new ConstructionException("g_volume_monitor_get()");
		}
		this(cast(GVolumeMonitor*) p);
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(GDrive*, VolumeMonitor)[] onDriveChangedListeners;
	/**
	 * Emitted when a drive changes.
	 */
	void addOnDriveChanged(void delegate(GDrive*, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drive-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drive-changed",
			cast(GCallback)&callBackDriveChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drive-changed"] = 1;
		}
		onDriveChangedListeners ~= dlg;
	}
	extern(C) static void callBackDriveChanged(GVolumeMonitor* volumeMonitorStruct, GDrive* drive, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(GDrive*, VolumeMonitor) dlg ; volumeMonitor.onDriveChangedListeners )
		{
			dlg(drive, volumeMonitor);
		}
	}
	
	void delegate(GDrive*, VolumeMonitor)[] onDriveConnectedListeners;
	/**
	 * Emitted when a drive is connected to the system.
	 */
	void addOnDriveConnected(void delegate(GDrive*, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drive-connected" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drive-connected",
			cast(GCallback)&callBackDriveConnected,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drive-connected"] = 1;
		}
		onDriveConnectedListeners ~= dlg;
	}
	extern(C) static void callBackDriveConnected(GVolumeMonitor* volumeMonitorStruct, GDrive* drive, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(GDrive*, VolumeMonitor) dlg ; volumeMonitor.onDriveConnectedListeners )
		{
			dlg(drive, volumeMonitor);
		}
	}
	
	void delegate(GDrive*, VolumeMonitor)[] onDriveDisconnectedListeners;
	/**
	 * Emitted when a drive is disconnected from the system.
	 */
	void addOnDriveDisconnected(void delegate(GDrive*, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drive-disconnected" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drive-disconnected",
			cast(GCallback)&callBackDriveDisconnected,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drive-disconnected"] = 1;
		}
		onDriveDisconnectedListeners ~= dlg;
	}
	extern(C) static void callBackDriveDisconnected(GVolumeMonitor* volumeMonitorStruct, GDrive* drive, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(GDrive*, VolumeMonitor) dlg ; volumeMonitor.onDriveDisconnectedListeners )
		{
			dlg(drive, volumeMonitor);
		}
	}
	
	void delegate(GDrive*, VolumeMonitor)[] onDriveEjectButtonListeners;
	/**
	 * Emitted when the eject button is pressed on drive.
	 * Since 2.18
	 */
	void addOnDriveEjectButton(void delegate(GDrive*, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("drive-eject-button" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drive-eject-button",
			cast(GCallback)&callBackDriveEjectButton,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["drive-eject-button"] = 1;
		}
		onDriveEjectButtonListeners ~= dlg;
	}
	extern(C) static void callBackDriveEjectButton(GVolumeMonitor* volumeMonitorStruct, GDrive* drive, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(GDrive*, VolumeMonitor) dlg ; volumeMonitor.onDriveEjectButtonListeners )
		{
			dlg(drive, volumeMonitor);
		}
	}
	
	void delegate(MountIF, VolumeMonitor)[] onMountAddedListeners;
	/**
	 * Emitted when a mount is added.
	 */
	void addOnMountAdded(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("mount-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mount-added",
			cast(GCallback)&callBackMountAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["mount-added"] = 1;
		}
		onMountAddedListeners ~= dlg;
	}
	extern(C) static void callBackMountAdded(GVolumeMonitor* volumeMonitorStruct, GMount* mount, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(MountIF, VolumeMonitor) dlg ; volumeMonitor.onMountAddedListeners )
		{
			dlg(new Mount(mount), volumeMonitor);
		}
	}
	
	void delegate(MountIF, VolumeMonitor)[] onMountChangedListeners;
	/**
	 * Emitted when a mount changes.
	 */
	void addOnMountChanged(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("mount-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mount-changed",
			cast(GCallback)&callBackMountChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["mount-changed"] = 1;
		}
		onMountChangedListeners ~= dlg;
	}
	extern(C) static void callBackMountChanged(GVolumeMonitor* volumeMonitorStruct, GMount* mount, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(MountIF, VolumeMonitor) dlg ; volumeMonitor.onMountChangedListeners )
		{
			dlg(new Mount(mount), volumeMonitor);
		}
	}
	
	void delegate(MountIF, VolumeMonitor)[] onMountPreUnmountListeners;
	/**
	 * Emitted when a mount is about to be removed.
	 */
	void addOnMountPreUnmount(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("mount-pre-unmount" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mount-pre-unmount",
			cast(GCallback)&callBackMountPreUnmount,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["mount-pre-unmount"] = 1;
		}
		onMountPreUnmountListeners ~= dlg;
	}
	extern(C) static void callBackMountPreUnmount(GVolumeMonitor* volumeMonitorStruct, GMount* mount, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(MountIF, VolumeMonitor) dlg ; volumeMonitor.onMountPreUnmountListeners )
		{
			dlg(new Mount(mount), volumeMonitor);
		}
	}
	
	void delegate(MountIF, VolumeMonitor)[] onMountRemovedListeners;
	/**
	 * Emitted when a mount is removed.
	 */
	void addOnMountRemoved(void delegate(MountIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("mount-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mount-removed",
			cast(GCallback)&callBackMountRemoved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["mount-removed"] = 1;
		}
		onMountRemovedListeners ~= dlg;
	}
	extern(C) static void callBackMountRemoved(GVolumeMonitor* volumeMonitorStruct, GMount* mount, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(MountIF, VolumeMonitor) dlg ; volumeMonitor.onMountRemovedListeners )
		{
			dlg(new Mount(mount), volumeMonitor);
		}
	}
	
	void delegate(VolumeIF, VolumeMonitor)[] onVolumeAddedListeners;
	/**
	 * Emitted when a mountable volume is added to the system.
	 */
	void addOnVolumeAdded(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("volume-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"volume-added",
			cast(GCallback)&callBackVolumeAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["volume-added"] = 1;
		}
		onVolumeAddedListeners ~= dlg;
	}
	extern(C) static void callBackVolumeAdded(GVolumeMonitor* volumeMonitorStruct, GVolume* volume, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(VolumeIF, VolumeMonitor) dlg ; volumeMonitor.onVolumeAddedListeners )
		{
			dlg(new Volume(volume), volumeMonitor);
		}
	}
	
	void delegate(VolumeIF, VolumeMonitor)[] onVolumeChangedListeners;
	/**
	 * Emitted when mountable volume is changed.
	 */
	void addOnVolumeChanged(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("volume-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"volume-changed",
			cast(GCallback)&callBackVolumeChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["volume-changed"] = 1;
		}
		onVolumeChangedListeners ~= dlg;
	}
	extern(C) static void callBackVolumeChanged(GVolumeMonitor* volumeMonitorStruct, GVolume* volume, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(VolumeIF, VolumeMonitor) dlg ; volumeMonitor.onVolumeChangedListeners )
		{
			dlg(new Volume(volume), volumeMonitor);
		}
	}
	
	void delegate(VolumeIF, VolumeMonitor)[] onVolumeRemovedListeners;
	/**
	 * Emitted when a mountable volume is removed from the system.
	 * See Also
	 * GFileMonitor
	 */
	void addOnVolumeRemoved(void delegate(VolumeIF, VolumeMonitor) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("volume-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"volume-removed",
			cast(GCallback)&callBackVolumeRemoved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["volume-removed"] = 1;
		}
		onVolumeRemovedListeners ~= dlg;
	}
	extern(C) static void callBackVolumeRemoved(GVolumeMonitor* volumeMonitorStruct, GVolume* volume, VolumeMonitor volumeMonitor)
	{
		foreach ( void delegate(VolumeIF, VolumeMonitor) dlg ; volumeMonitor.onVolumeRemovedListeners )
		{
			dlg(new Volume(volume), volumeMonitor);
		}
	}
	
	
	/**
	 * Gets a list of drives connected to the system.
	 * The returned list should be freed with g_list_free(), after
	 * its elements have been unreffed with g_object_unref().
	 * Returns: a GList of connected GDrive objects.
	 */
	public ListG getConnectedDrives()
	{
		// GList* g_volume_monitor_get_connected_drives  (GVolumeMonitor *volume_monitor);
		auto p = g_volume_monitor_get_connected_drives(gVolumeMonitor);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Gets a list of the volumes on the system.
	 * The returned list should be freed with g_list_free(), after
	 * its elements have been unreffed with g_object_unref().
	 * Returns: a GList of GVolume objects.
	 */
	public ListG getVolumes()
	{
		// GList* g_volume_monitor_get_volumes (GVolumeMonitor *volume_monitor);
		auto p = g_volume_monitor_get_volumes(gVolumeMonitor);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Gets a list of the mounts on the system.
	 * The returned list should be freed with g_list_free(), after
	 * its elements have been unreffed with g_object_unref().
	 * Returns: a GList of GMount objects.
	 */
	public ListG getMounts()
	{
		// GList* g_volume_monitor_get_mounts (GVolumeMonitor *volume_monitor);
		auto p = g_volume_monitor_get_mounts(gVolumeMonitor);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * This function should be called by any GVolumeMonitor
	 * implementation when a new GMount object is created that is not
	 * associated with a GVolume object. It must be called just before
	 * emitting the mount_added signal.
	 * If the return value is not NULL, the caller must associate the
	 * returned GVolume object with the GMount. This involves returning
	 * it in it's g_mount_get_volume() implementation. The caller must
	 * also listen for the "removed" signal on the returned object
	 * and give up it's reference when handling that signal
	 * Similary, if implementing g_volume_monitor_adopt_orphan_mount(),
	 * the implementor must take a reference to mount and return it in
	 * it's g_volume_get_mount() implemented. Also, the implementor must
	 * listen for the "unmounted" signal on mount and give up it's
	 * reference upon handling that signal.
	 * There are two main use cases for this function.
	 * One is when implementing a user space file system driver that reads
	 * blocks of a block device that is already represented by the native
	 * volume monitor (for example a CD Audio file system driver). Such
	 * a driver will generate it's own GMount object that needs to be
	 * assoicated with the GVolume object that represents the volume.
	 * The other is for implementing a GVolumeMonitor whose sole purpose
	 * is to return GVolume objects representing entries in the users
	 * "favorite servers" list or similar.
	 * Params:
	 * mount =  a GMount object to find a parent for
	 * Returns: the GVolume object that is the parent for mount or NULLif no wants to adopt the GMount.
	 */
	public static VolumeIF adoptOrphanMount(MountIF mount)
	{
		// GVolume* g_volume_monitor_adopt_orphan_mount (GMount *mount);
		auto p = g_volume_monitor_adopt_orphan_mount((mount is null) ? null : mount.getMountTStruct());
		if(p is null)
		{
			return null;
		}
		return new Volume(cast(GVolume*) p);
	}
	
	/**
	 * Finds a GMount object by it's UUID (see g_mount_get_uuid())
	 * Params:
	 * uuid =  the UUID to look for
	 * Returns: a GMount or NULL if no such mount is available. Free the returned object with g_object_unref().
	 */
	public MountIF getMountForUuid(string uuid)
	{
		// GMount* g_volume_monitor_get_mount_for_uuid (GVolumeMonitor *volume_monitor,  const char *uuid);
		auto p = g_volume_monitor_get_mount_for_uuid(gVolumeMonitor, Str.toStringz(uuid));
		if(p is null)
		{
			return null;
		}
		return new Mount(cast(GMount*) p);
	}
	
	/**
	 * Finds a GVolume object by it's UUID (see g_volume_get_uuid())
	 * Params:
	 * uuid =  the UUID to look for
	 * Returns: a GVolume or NULL if no such volume is available. Free the returned object with g_object_unref().Signal DetailsThe "drive-changed" signalvoid user_function (GVolumeMonitor *volume_monitor, GDrive *drive, gpointer user_data) : Run LastEmitted when a drive changes.
	 */
	public VolumeIF getVolumeForUuid(string uuid)
	{
		// GVolume* g_volume_monitor_get_volume_for_uuid  (GVolumeMonitor *volume_monitor,  const char *uuid);
		auto p = g_volume_monitor_get_volume_for_uuid(gVolumeMonitor, Str.toStringz(uuid));
		if(p is null)
		{
			return null;
		}
		return new Volume(cast(GVolume*) p);
	}
}