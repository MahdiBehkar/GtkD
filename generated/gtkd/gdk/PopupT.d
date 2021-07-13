/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module gdk.PopupT;

public  import gdk.PopupLayout;
public  import gdk.Surface;
public  import gdk.c.functions;
public  import gdk.c.types;
public  import gobject.ObjectG;


/**
 * A `GdkPopup` is a surface that is attached to another surface.
 * 
 * The `GdkPopup` is positioned relative to its parent surface.
 * 
 * `GdkPopup`s are typically used to implement menus and similar popups.
 * They can be modal, which is indicated by the [property@GdkPopup:autohide]
 * property.
 */
public template PopupT(TStruct)
{
	/** Get the main Gtk struct */
	public GdkPopup* getPopupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GdkPopup*)getStruct();
	}


	/**
	 * Returns whether this popup is set to hide on outside clicks.
	 *
	 * Returns: %TRUE if @popup will autohide
	 */
	public bool getAutohide()
	{
		return gdk_popup_get_autohide(getPopupStruct()) != 0;
	}

	/**
	 * Returns the parent surface of a popup.
	 *
	 * Returns: the parent surface
	 */
	public Surface getParent()
	{
		auto __p = gdk_popup_get_parent(getPopupStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Obtains the position of the popup relative to its parent.
	 *
	 * Returns: the X coordinate of @popup position
	 */
	public int getPositionX()
	{
		return gdk_popup_get_position_x(getPopupStruct());
	}

	/**
	 * Obtains the position of the popup relative to its parent.
	 *
	 * Returns: the Y coordinate of @popup position
	 */
	public int getPositionY()
	{
		return gdk_popup_get_position_y(getPopupStruct());
	}

	/**
	 * Gets the current popup rectangle anchor.
	 *
	 * The value returned may change after calling [method@Gdk.Popup.present],
	 * or after the [signal@Gdk.Surface::layout] signal is emitted.
	 *
	 * Returns: the current rectangle anchor value of @popup
	 */
	public GdkGravity getRectAnchor()
	{
		return gdk_popup_get_rect_anchor(getPopupStruct());
	}

	/**
	 * Gets the current popup surface anchor.
	 *
	 * The value returned may change after calling [method@Gdk.Popup.present],
	 * or after the [signal@Gdk.Surface::layout] signal is emitted.
	 *
	 * Returns: the current surface anchor value of @popup
	 */
	public GdkGravity getSurfaceAnchor()
	{
		return gdk_popup_get_surface_anchor(getPopupStruct());
	}

	/**
	 * Present @popup after having processed the #GdkPopupLayout rules.
	 *
	 * If the popup was previously now showing, it will be showed,
	 * otherwise it will change position according to @layout.
	 *
	 * After calling this function, the result should be handled in response
	 * to the [signal@GdkSurface::layout] signal being emitted. The resulting
	 * popup position can be queried using [method@Gdk.Popup.get_position_x],
	 * [method@Gdk.Popup.get_position_y], and the resulting size will be sent as
	 * parameters in the layout signal. Use [method@Gdk.Popup.get_rect_anchor]
	 * and [method@Gdk.Popup.get_surface_anchor] to get the resulting anchors.
	 *
	 * Presenting may fail, for example if the @popup is set to autohide
	 * and is immediately hidden upon being presented. If presenting failed,
	 * the [signal@Gdk.Surface::layout] signal will not me emitted.
	 *
	 * Params:
	 *     width = the unconstrained popup width to layout
	 *     height = the unconstrained popup height to layout
	 *     layout = the `GdkPopupLayout` object used to layout
	 *
	 * Returns: %FALSE if it failed to be presented, otherwise %TRUE.
	 */
	public bool present(int width, int height, PopupLayout layout)
	{
		return gdk_popup_present(getPopupStruct(), width, height, (layout is null) ? null : layout.getPopupLayoutStruct()) != 0;
	}
}
