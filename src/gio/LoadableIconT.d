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
 * inFile  = GLoadableIcon.html
 * outPack = gio
 * outFile = LoadableIconT
 * strct   = GLoadableIcon
 * realStrct=
 * ctorStrct=
 * clss    = LoadableIconT
 * interf  = LoadableIconIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_loadable_icon_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.InputStream
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GInputStream* -> InputStream
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.LoadableIconT;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InputStream;




/**
 * Description
 * Extends the GIcon interface and adds the ability to
 * load icons from streams.
 */
public template LoadableIconT(TStruct)
{
	
	/** the main Gtk struct */
	protected GLoadableIcon* gLoadableIcon;
	
	
	public GLoadableIcon* getLoadableIconTStruct()
	{
		return cast(GLoadableIcon*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Loads a loadable icon. For the asynchronous version of this function,
	 * see g_loadable_icon_load_async().
	 * Params:
	 * size =  an integer.
	 * type =  a location to store the type of the loaded icon, NULL to ignore.
	 * cancellable =  optional GCancellable object, NULL to ignore.
	 * Returns: a GInputStream to read the icon from.
	 * Throws: GException on failure.
	 */
	public InputStream load(int size, out string type, Cancellable cancellable)
	{
		// GInputStream* g_loadable_icon_load (GLoadableIcon *icon,  int size,  char **type,  GCancellable *cancellable,  GError **error);
		char* outtype = null;
		GError* err = null;
		
		auto p = g_loadable_icon_load(getLoadableIconTStruct(), size, &outtype, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		type = Str.toString(outtype);
		if(p is null)
		{
			return null;
		}
		return new InputStream(cast(GInputStream*) p);
	}
	
	/**
	 * Loads an icon asynchronously. To finish this function, see
	 * g_loadable_icon_load_finish(). For the synchronous, blocking
	 * version of this function, see g_loadable_icon_load().
	 * Params:
	 * size =  an integer.
	 * cancellable =  optional GCancellable object, NULL to ignore.
	 * callback =  a GAsyncReadyCallback to call when the request is satisfied
	 * userData =  the data to pass to callback function
	 */
	public void loadAsync(int size, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_loadable_icon_load_async (GLoadableIcon *icon,  int size,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_loadable_icon_load_async(getLoadableIconTStruct(), size, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an asynchronous icon load started in g_loadable_icon_load_async().
	 * Params:
	 * res =  a GAsyncResult.
	 * type =  a location to store the type of the loaded icon, NULL to ignore.
	 * Returns: a GInputStream to read the icon from.
	 * Throws: GException on failure.
	 */
	public InputStream loadFinish(AsyncResultIF res, out string type)
	{
		// GInputStream* g_loadable_icon_load_finish (GLoadableIcon *icon,  GAsyncResult *res,  char **type,  GError **error);
		char* outtype = null;
		GError* err = null;
		
		auto p = g_loadable_icon_load_finish(getLoadableIconTStruct(), (res is null) ? null : res.getAsyncResultTStruct(), &outtype, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		type = Str.toString(outtype);
		if(p is null)
		{
			return null;
		}
		return new InputStream(cast(GInputStream*) p);
	}
}