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
 * inFile  = cairo-Font-Options.html
 * outPack = cairoLib
 * outFile = FontOption
 * strct   = cairo_font_options_t
 * realStrct=
 * ctorStrct=
 * clss    = FontOption
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_font_options_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module cairoLib.FontOption;

private import gtkc.cairoLibtypes;

private import gtkc.cairoLib;






/**
 * Description
 */
public class FontOption
{
	
	/** the main Gtk struct */
	protected cairo_font_options_t* cairo_font_options;
	
	
	public cairo_font_options_t* getFontOptionStruct()
	{
		return cairo_font_options;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_font_options;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_font_options_t* cairo_font_options)
	{
		assert(cairo_font_options !is null, "struct cairo_font_options is null on constructor");
		this.cairo_font_options = cairo_font_options;
	}
	
	/**
	 */
	
	
	/**
	 * Allocates a new font options object with all options initialized
	 *  to default values.
	 * Returns:
	 *  a newly allocated cairo_font_options_t. Free with
	 *  cairo_font_options_destroy(). This function always returns a
	 *  valid pointer; if memory cannot be allocated, then a special
	 *  error object is returned where all operations on the object do nothing.
	 *  You can check for this with cairo_font_options_status().
	 */
	public static cairo_font_options_t* create()
	{
		// cairo_font_options_t* cairo_font_options_create  (void);
		return cairo_font_options_create();
	}
	
	/**
	 * Allocates a new font options object copying the option values from
	 *  original.
	 * original:
	 *  a cairo_font_options_t
	 * Returns:
	 *  a newly allocated cairo_font_options_t. Free with
	 *  cairo_font_options_destroy(). This function always returns a
	 *  valid pointer; if memory cannot be allocated, then a special
	 *  error object is returned where all operations on the object do nothing.
	 *  You can check for this with cairo_font_options_status().
	 */
	public cairo_font_options_t* copy()
	{
		// cairo_font_options_t* cairo_font_options_copy  (const cairo_font_options_t *original);
		return cairo_font_options_copy(cairo_font_options);
	}
	
	/**
	 * Destroys a cairo_font_options_t object created with with
	 * cairo_font_options_create() or cairo_font_options_copy().
	 * options:
	 *  a cairo_font_options_t
	 */
	public void destroy()
	{
		// void cairo_font_options_destroy (cairo_font_options_t *options);
		cairo_font_options_destroy(cairo_font_options);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * font options object
	 * options:
	 *  a cairo_font_options_t
	 * Returns:
	 *  CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_font_options_status (cairo_font_options_t *options);
		return cairo_font_options_status(cairo_font_options);
	}
	
	/**
	 * Merges non-default options from other into options, replacing
	 * existing values. This operation can be thought of as somewhat
	 * similar to compositing other onto options with the operation
	 * of CAIRO_OPERATION_OVER.
	 * options:
	 *  a cairo_font_options_t
	 * other:
	 *  another cairo_font_options_t
	 */
	public void merge(cairo_font_options_t* other)
	{
		// void cairo_font_options_merge (cairo_font_options_t *options,  const cairo_font_options_t *other);
		cairo_font_options_merge(cairo_font_options, other);
	}
	
	/**
	 * Compute a hash for the font options object; this value will
	 * be useful when storing an object containing a cairo_font_options_t
	 * in a hash table.
	 * options:
	 *  a cairo_font_options_t
	 * Returns:
	 *  the hash value for the font options object.
	 *  The return value can be cast to a 32-bit type if a
	 *  32-bit hash value is needed.
	 */
	public ulong hash()
	{
		// unsigned long cairo_font_options_hash (const cairo_font_options_t *options);
		return cairo_font_options_hash(cairo_font_options);
	}
	
	/**
	 * Compares two font options objects for equality.
	 * options:
	 *  a cairo_font_options_t
	 * other:
	 *  another cairo_font_options_t
	 * Returns:
	 *  TRUE if all fields of the two font options objects match
	 */
	public cairo_bool_t equal(cairo_font_options_t* other)
	{
		// cairo_bool_t cairo_font_options_equal (const cairo_font_options_t *options,  const cairo_font_options_t *other);
		return cairo_font_options_equal(cairo_font_options, other);
	}
	
	/**
	 * Sets the antiliasing mode for the font options object. This
	 * specifies the type of antialiasing to do when rendering text.
	 * options:
	 *  a cairo_font_options_t
	 * antialias:
	 *  the new antialiasing mode
	 */
	public void setAntialias(cairo_antialias_t antialias)
	{
		// void cairo_font_options_set_antialias  (cairo_font_options_t *options,  cairo_antialias_t antialias);
		cairo_font_options_set_antialias(cairo_font_options, antialias);
	}
	
	/**
	 * Gets the antialising mode for the font options object.
	 * options:
	 *  a cairo_font_options_t
	 * Returns:
	 *  the antialiasing mode
	 */
	public cairo_antialias_t getAntialias()
	{
		// cairo_antialias_t cairo_font_options_get_antialias  (const cairo_font_options_t *options);
		return cairo_font_options_get_antialias(cairo_font_options);
	}
	
	
	/**
	 * Sets the subpixel order for the font options object. The subpixel
	 * order specifies the order of color elements within each pixel on
	 * the display device when rendering with an antialiasing mode of
	 * CAIRO_ANTIALIAS_SUBPIXEL. See the documentation for
	 * cairo_subpixel_order_t for full details.
	 * options:
	 *  a cairo_font_options_t
	 * subpixel_order:
	 *  the new subpixel order
	 */
	public void setSubpixelOrder(cairo_subpixel_order_t subpixelOrder)
	{
		// void cairo_font_options_set_subpixel_order  (cairo_font_options_t *options,  cairo_subpixel_order_t subpixel_order);
		cairo_font_options_set_subpixel_order(cairo_font_options, subpixelOrder);
	}
	
	/**
	 * Gets the subpixel order for the font options object.
	 * See the documentation for cairo_subpixel_order_t for full details.
	 * options:
	 *  a cairo_font_options_t
	 * Returns:
	 *  the subpixel order for the font options object
	 */
	public cairo_subpixel_order_t getSubpixelOrder()
	{
		// cairo_subpixel_order_t cairo_font_options_get_subpixel_order  (const cairo_font_options_t *options);
		return cairo_font_options_get_subpixel_order(cairo_font_options);
	}
	
	
	/**
	 * Sets the hint style for font outlines for the font options object.
	 * This controls whether to fit font outlines to the pixel grid,
	 * and if so, whether to optimize for fidelity or contrast.
	 * See the documentation for cairo_hint_style_t for full details.
	 * options:
	 *  a cairo_font_options_t
	 * hint_style:
	 *  the new hint style
	 */
	public void setHintStyle(cairo_hint_style_t hintStyle)
	{
		// void cairo_font_options_set_hint_style  (cairo_font_options_t *options,  cairo_hint_style_t hint_style);
		cairo_font_options_set_hint_style(cairo_font_options, hintStyle);
	}
	
	/**
	 * Gets the hint style for font outlines for the font options object.
	 * See the documentation for cairo_hint_style_t for full details.
	 * options:
	 *  a cairo_font_options_t
	 * Returns:
	 *  the hint style for the font options object
	 */
	public cairo_hint_style_t getHintStyle()
	{
		// cairo_hint_style_t cairo_font_options_get_hint_style  (const cairo_font_options_t *options);
		return cairo_font_options_get_hint_style(cairo_font_options);
	}
	
	
	/**
	 * Sets the metrics hinting mode for the font options object. This
	 * controls whether metrics are quantized to integer values in
	 * device units.
	 * See the documentation for cairo_hint_metrics_t for full details.
	 * options:
	 *  a cairo_font_options_t
	 * hint_metrics:
	 *  the new metrics hinting mode
	 */
	public void setHintMetrics(cairo_hint_metrics_t hintMetrics)
	{
		// void cairo_font_options_set_hint_metrics  (cairo_font_options_t *options,  cairo_hint_metrics_t hint_metrics);
		cairo_font_options_set_hint_metrics(cairo_font_options, hintMetrics);
	}
	
	/**
	 * Gets the metrics hinting mode for the font options object.
	 * See the documentation for cairo_hint_metrics_t for full details.
	 * options:
	 *  a cairo_font_options_t
	 * Returns:
	 *  the metrics hinting mode for the font options object
	 */
	public cairo_hint_metrics_t getHintMetrics()
	{
		// cairo_hint_metrics_t cairo_font_options_get_hint_metrics  (const cairo_font_options_t *options);
		return cairo_font_options_get_hint_metrics(cairo_font_options);
	}
}
