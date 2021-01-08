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


module gtk.DropDown;

private import gio.ListModelIF;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Expression;
private import gtk.ListItemFactory;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * GtkDropDown is a widget that allows the user to choose an item
 * from a list of options. The GtkDropDown displays the selected
 * choice.
 * 
 * The options are given to GtkDropDown in the form of #GListModel,
 * and how the individual options are represented is determined by
 * a #GtkListItemFactory. The default factory displays simple strings.
 * 
 * GtkDropDown knows how to obtain strings from the items in a
 * #GtkStringList; for other models, you have to provide an expression
 * to find the strings via gtk_drop_down_set_expression().
 * 
 * GtkDropDown can optionally allow search in the popup, which is
 * useful if the list of options is long. To enable the search entry,
 * use gtk_drop_down_set_enable_search().
 * 
 * # CSS nodes
 * 
 * GtkDropDown has a single CSS node with name dropdown,
 * with the button and popover nodes as children.
 * 
 * # Accessibility
 * 
 * GtkDropDown uses the #GTK_ACCESSIBLE_ROLE_COMBO_BOX role.
 */
public class DropDown : Widget
{
	/** the main Gtk struct */
	protected GtkDropDown* gtkDropDown;

	/** Get the main Gtk struct */
	public GtkDropDown* getDropDownStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkDropDown;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkDropDown;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkDropDown* gtkDropDown, bool ownedRef = false)
	{
		this.gtkDropDown = gtkDropDown;
		super(cast(GtkWidget*)gtkDropDown, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_drop_down_get_type();
	}

	/**
	 * Creates a new #GtkDropDown.
	 *
	 * You may want to call gtk_drop_down_set_factory()
	 * to set up a way to map its items to widgets.
	 *
	 * Params:
	 *     model = the model to use or %NULL for none
	 *     expression = the expression to use or %NULL for none
	 *
	 * Returns: a new #GtkDropDown
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListModelIF model, Expression expression)
	{
		auto __p = gtk_drop_down_new((model is null) ? null : model.getListModelStruct(), (expression is null) ? null : expression.getExpressionStruct(true));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkDropDown*) __p);
	}

	/**
	 * Creates a new #GtkDropDown that is populated with
	 * the strings in @strings.
	 *
	 * Params:
	 *     strings = The strings to put in the dropdown
	 *
	 * Returns: a new #GtkDropDown
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string[] strings)
	{
		auto __p = gtk_drop_down_new_from_strings(Str.toStringzArray(strings));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_strings");
		}

		this(cast(GtkDropDown*) __p);
	}

	/**
	 * Returns whether search is enabled.
	 *
	 * Returns: %TRUE if the popup includes a search entry
	 */
	public bool getEnableSearch()
	{
		return gtk_drop_down_get_enable_search(gtkDropDown) != 0;
	}

	/**
	 * Gets the expression set with gtk_drop_down_set_expression().
	 *
	 * Returns: a #GtkExpression or %NULL
	 */
	public Expression getExpression()
	{
		auto __p = gtk_drop_down_get_expression(gtkDropDown);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Expression)(cast(GtkExpression*) __p);
	}

	/**
	 * Gets the factory that's currently used to populate list items.
	 *
	 * The factory returned by this function is always used for the
	 * item in the button. It is also used for items in the popup
	 * if #GtkDropDown:list-factory is not set.
	 *
	 * Returns: The factory in use
	 */
	public ListItemFactory getFactory()
	{
		auto __p = gtk_drop_down_get_factory(gtkDropDown);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListItemFactory)(cast(GtkListItemFactory*) __p);
	}

	/**
	 * Gets the factory that's currently used to populate list items in the popup.
	 *
	 * Returns: The factory in use
	 */
	public ListItemFactory getListFactory()
	{
		auto __p = gtk_drop_down_get_list_factory(gtkDropDown);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListItemFactory)(cast(GtkListItemFactory*) __p);
	}

	/**
	 * Gets the model that provides the displayed items.
	 *
	 * Returns: The model in use
	 */
	public ListModelIF getModel()
	{
		auto __p = gtk_drop_down_get_model(gtkDropDown);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Gets the position of the selected item.
	 *
	 * Returns: the position of the selected item, or #GTK_INVALID_LIST_POSITION
	 *     if not item is selected
	 */
	public uint getSelected()
	{
		return gtk_drop_down_get_selected(gtkDropDown);
	}

	/**
	 * Gets the selected item. If no item is selected, %NULL is returned.
	 *
	 * Returns: The selected item
	 */
	public ObjectG getSelectedItem()
	{
		auto __p = gtk_drop_down_get_selected_item(gtkDropDown);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Sets whether a search entry will be shown in the popup that
	 * allows to search for items in the list.
	 *
	 * Note that #GtkDropDown:expression must be set for search to work.
	 *
	 * Params:
	 *     enableSearch = whether to enable search
	 */
	public void setEnableSearch(bool enableSearch)
	{
		gtk_drop_down_set_enable_search(gtkDropDown, enableSearch);
	}

	/**
	 * Sets the expression that gets evaluated to obtain strings from items
	 * when searching in the popup. The expression must have a value type of
	 * #G_TYPE_STRING.
	 *
	 * Params:
	 *     expression = a #GtkExpression, or %NULL
	 */
	public void setExpression(Expression expression)
	{
		gtk_drop_down_set_expression(gtkDropDown, (expression is null) ? null : expression.getExpressionStruct());
	}

	/**
	 * Sets the #GtkListItemFactory to use for populating list items.
	 *
	 * Params:
	 *     factory = the factory to use or %NULL for none
	 */
	public void setFactory(ListItemFactory factory)
	{
		gtk_drop_down_set_factory(gtkDropDown, (factory is null) ? null : factory.getListItemFactoryStruct());
	}

	/**
	 * Sets the #GtkListItemFactory to use for populating list items in the popup.
	 *
	 * Params:
	 *     factory = the factory to use or %NULL for none
	 */
	public void setListFactory(ListItemFactory factory)
	{
		gtk_drop_down_set_list_factory(gtkDropDown, (factory is null) ? null : factory.getListItemFactoryStruct());
	}

	/**
	 * Sets the #GListModel to use.
	 *
	 * Params:
	 *     model = the model to use or %NULL for none
	 */
	public void setModel(ListModelIF model)
	{
		gtk_drop_down_set_model(gtkDropDown, (model is null) ? null : model.getListModelStruct());
	}

	/**
	 * Selects the item at the given position.
	 *
	 * Params:
	 *     position = the position of the item to select, or #GTK_INVALID_LIST_POSITION
	 */
	public void setSelected(uint position)
	{
		gtk_drop_down_set_selected(gtkDropDown, position);
	}
}