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
 * inFile  = libgda-GdaDataModel.html
 * outPack = gda
 * outFile = DataModel
 * strct   = GdaDataModel
 * realStrct=
 * ctorStrct=
 * clss    = DataModel
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_data_model_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ListG
 * 	- gda.Row
 * 	- gda.FieldAttributes
 * 	- gda.Value
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaDataModel* -> DataModel
 * 	- GdaFieldAttributes* -> FieldAttributes
 * 	- GdaRow* -> Row
 * 	- GdaValue* -> Value
 * module aliases:
 * local aliases:
 */

module gda.DataModel;

private import gdac.gdatypes;

private import gdac.gda;


private import glib.ListG;
private import gda.Row;
private import gda.FieldAttributes;
private import gda.Value;




/**
 * Description
 */
public class DataModel
{
	
	/** the main Gtk struct */
	protected GdaDataModel* gdaDataModel;
	
	
	public GdaDataModel* getDataModelStruct()
	{
		return gdaDataModel;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaDataModel;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaDataModel* gdaDataModel)
	{
		assert(gdaDataModel !is null, "struct gdaDataModel is null on constructor");
		this.gdaDataModel = gdaDataModel;
	}
	
	this (ListG glist) {
		this.gdaDataModel = cast(GdaDataModel *) glist.data;
	}
	
	/**
	 */
	
	
	/**
	 * Notifies listeners of the given data model object of changes
	 * in the underlying data. Listeners usually will connect
	 * themselves to the "changed" signal in the GdaDataModel
	 * class, thus being notified of any new data being appended
	 * or removed from the data model.
	 * model :
	 *  a GdaDataModel object.
	 */
	public void changed()
	{
		// void gda_data_model_changed (GdaDataModel *model);
		gda_data_model_changed(gdaDataModel);
	}
	
	/**
	 * Emits the 'row_inserted' and 'changed' signals on model.
	 * model :
	 *  a GdaDataModel object.
	 * row :
	 *  row number.
	 */
	public void rowInserted(int row)
	{
		// void gda_data_model_row_inserted (GdaDataModel *model,  gint row);
		gda_data_model_row_inserted(gdaDataModel, row);
	}
	
	/**
	 * Emits the 'row_updated' and 'changed' signals on model.
	 * model :
	 *  a GdaDataModel object.
	 * row :
	 *  row number.
	 */
	public void rowUpdated(int row)
	{
		// void gda_data_model_row_updated (GdaDataModel *model,  gint row);
		gda_data_model_row_updated(gdaDataModel, row);
	}
	
	/**
	 * Emits the 'row_removed' and 'changed' signal on model.
	 * model :
	 *  a GdaDataModel object.
	 * row :
	 *  row number.
	 */
	public void rowRemoved(int row)
	{
		// void gda_data_model_row_removed (GdaDataModel *model,  gint row);
		gda_data_model_row_removed(gdaDataModel, row);
	}
	
	/**
	 * Emits the 'column_inserted' and 'changed' signals on model.
	 * model :
	 *  a GdaDataModel object.
	 * col :
	 *  column number.
	 */
	public void columnInserted(int col)
	{
		// void gda_data_model_column_inserted (GdaDataModel *model,  gint col);
		gda_data_model_column_inserted(gdaDataModel, col);
	}
	
	/**
	 * Emits the 'column_updated' and 'changed' signals on model.
	 * model :
	 *  a GdaDataModel object.
	 * col :
	 *  column number.
	 */
	public void columnUpdated(int col)
	{
		// void gda_data_model_column_updated (GdaDataModel *model,  gint col);
		gda_data_model_column_updated(gdaDataModel, col);
	}
	
	/**
	 * Emits the 'column_removed' and 'changed' signal on model.
	 * model :
	 *  a GdaDataModel object.
	 * col :
	 *  column number.
	 */
	public void columnRemoved(int col)
	{
		// void gda_data_model_column_removed (GdaDataModel *model,  gint col);
		gda_data_model_column_removed(gdaDataModel, col);
	}
	
	/**
	 * Disables notifications of changes on the given data model. To
	 * re-enable notifications again, you should call the
	 * gda_data_model_thaw function.
	 * model :
	 *  a GdaDataModel object.
	 */
	public void freeze()
	{
		// void gda_data_model_freeze (GdaDataModel *model);
		gda_data_model_freeze(gdaDataModel);
	}
	
	/**
	 * Re-enables notifications of changes on the given data model.
	 * model :
	 *  a GdaDataModel object.
	 */
	public void thaw()
	{
		// void gda_data_model_thaw (GdaDataModel *model);
		gda_data_model_thaw(gdaDataModel);
	}
	
	/**
	 * model :
	 *  a GdaDataModel object.
	 * Returns :
	 *  the number of rows in the given data model.
	 */
	public int getNRows()
	{
		// gint gda_data_model_get_n_rows (GdaDataModel *model);
		return gda_data_model_get_n_rows(gdaDataModel);
	}
	
	/**
	 * model :
	 *  a GdaDataModel object.
	 * Returns :
	 *  the number of columns in the given data model.
	 */
	public int getNColumns()
	{
		// gint gda_data_model_get_n_columns (GdaDataModel *model);
		return gda_data_model_get_n_columns(gdaDataModel);
	}
	
	/**
	 * Queries the underlying data model implementation for a description
	 * of a given column. That description is returned in the form of
	 * a GdaFieldAttributes structure, which contains all the information
	 * about the given column in the data model.
	 * model :
	 *  a GdaDataModel object.
	 * col :
	 *  column number.
	 * Returns :
	 *  the description of the column.
	 */
	public FieldAttributes describeColumn(int col)
	{
		// GdaFieldAttributes* gda_data_model_describe_column (GdaDataModel *model,  gint col);
		return new FieldAttributes( gda_data_model_describe_column(gdaDataModel, col) );
	}
	
	/**
	 * model :
	 *  a GdaDataModel object.
	 * col :
	 *  column number.
	 * Returns :
	 *  the title for the given column in a data model object.
	 */
	public char[] getColumnTitle(int col)
	{
		// const gchar* gda_data_model_get_column_title (GdaDataModel *model,  gint col);
		return Str.toString(gda_data_model_get_column_title(gdaDataModel, col) );
	}
	
	/**
	 * Sets the title of the given col in model.
	 * model :
	 *  a GdaDataModel object.
	 * col :
	 *  column number
	 * title :
	 *  title for the given column.
	 */
	public void setColumnTitle(int col, char[] title)
	{
		// void gda_data_model_set_column_title (GdaDataModel *model,  gint col,  const gchar *title);
		gda_data_model_set_column_title(gdaDataModel, col, Str.toStringz(title));
	}
	
	/**
	 * Gets the position of a column on the data model, based on
	 * the column's title.
	 * model :
	 *  a GdaDataModel object.
	 * title :
	 *  column title.
	 * Returns :
	 *  the position of the column in the data model, or -1
	 * if the column could not be found.
	 */
	public int getColumnPosition(char[] title)
	{
		// gint gda_data_model_get_column_position (GdaDataModel *model,  const gchar *title);
		return gda_data_model_get_column_position(gdaDataModel, Str.toStringz(title));
	}
	
	/**
	 * Retrieves a given row from a data model.
	 * model :
	 *  a GdaDataModel object.
	 * row :
	 *  row number.
	 * Returns :
	 *  a GdaRow object.
	 */
	public Row getRow(int row)
	{
		// const GdaRow* gda_data_model_get_row (GdaDataModel *model,  gint row);
		return new Row( gda_data_model_get_row(gdaDataModel, row) );
	}
	
	/**
	 * Retrieves the data stored in the given position (identified by
	 * the col and row parameters) on a data model.
	 * This is the main function for accessing data in a model.
	 * model :
	 *  a GdaDataModel object.
	 * col :
	 *  column number.
	 * row :
	 *  row number.
	 * Returns :
	 *  a GdaValue containing the value stored in the given
	 * position, or NULL on error (out-of-bound position, etc).
	 */
	public Value getValueAt(int col, int row)
	{
		// const GdaValue* gda_data_model_get_value_at (GdaDataModel *model,  gint col,  gint row);
		return new Value( gda_data_model_get_value_at(gdaDataModel, col, row) );
	}
	
	/**
	 * Checks whether the given data model can be updated or not.
	 * model :
	 *  a GdaDataModel object.
	 * Returns :
	 *  TRUE if it can be updated, FALSE if not.
	 */
	public int isUpdatable()
	{
		// gboolean gda_data_model_is_updatable (GdaDataModel *model);
		return gda_data_model_is_updatable(gdaDataModel);
	}
	
	/**
	 * Appends a row to the given data model.
	 * model :
	 *  a GdaDataModel object.
	 * values :
	 *  GList of GdaValue* representing the row to add. The
	 *  length must match model's column count. These GdaValue
	 *  are value-copied. The user is still responsible for freeing them.
	 * Returns :
	 *  the added row.
	 */
	public Row appendRow(ListG values)
	{
		// const GdaRow* gda_data_model_append_row (GdaDataModel *model,  const GList *values);
		return new Row( gda_data_model_append_row(gdaDataModel, (values is null) ? null : values.getListGStruct()) );
	}
	
	/**
	 * Removes a row from the data model. This results in the underlying
	 * database row being removed in the database.
	 * model :
	 *  a GdaDataModel object.
	 * row :
	 *  the GdaRow to be removed.
	 * Returns :
	 *  TRUE if successful, FALSE otherwise.
	 */
	public int removeRow(Row row)
	{
		// gboolean gda_data_model_remove_row (GdaDataModel *model,  const GdaRow *row);
		return gda_data_model_remove_row(gdaDataModel, (row is null) ? null : row.getRowStruct());
	}
	
	/**
	 * Updates a row data model. This results in the underlying
	 * database row's values being changed.
	 * model :
	 *  a GdaDataModel object.
	 * row :
	 *  the GdaRow to be updated.
	 * Returns :
	 *  TRUE if successful, FALSE otherwise.
	 */
	public int updateRow(Row row)
	{
		// gboolean gda_data_model_update_row (GdaDataModel *model,  const GdaRow *row);
		return gda_data_model_update_row(gdaDataModel, (row is null) ? null : row.getRowStruct());
	}
	
	/**
	 * Appends a column to the given data model. If successful, the position of
	 * the new column in the data model is set on col, and you can grab it using
	 * gda_field_attributes_get_position.
	 * model :
	 *  a GdaDataModel object.
	 * attrs :
	 *  a GdaFieldAttributes describing the column to add.
	 * Returns :
	 *  TRUE if successful, FALSE otherwise.
	 */
	public int appendColumn(FieldAttributes attrs)
	{
		// gboolean gda_data_model_append_column (GdaDataModel *model,  const GdaFieldAttributes *attrs);
		return gda_data_model_append_column(gdaDataModel, (attrs is null) ? null : attrs.getFieldAttributesStruct());
	}
	
	/**
	 * Updates a column in the given data model. This results in the underlying
	 * database row's values being changed.
	 * model :
	 *  a GdaDataModel object.
	 * col :
	 *  the column to be updated.
	 * attrs :
	 *  attributes for the column.
	 * Returns :
	 *  TRUE if successful, FALSE otherwise.
	 */
	public int updateColumn(int col, FieldAttributes attrs)
	{
		// gboolean gda_data_model_update_column (GdaDataModel *model,  gint col,  const GdaFieldAttributes *attrs);
		return gda_data_model_update_column(gdaDataModel, col, (attrs is null) ? null : attrs.getFieldAttributesStruct());
	}
	
	/**
	 * Removes a column from the data model. This means that all values attached to this
	 * column in the data model will be destroyed in the underlying database.
	 * model :
	 *  a GdaDataModel object.
	 * col :
	 *  the column to be removed.
	 * Returns :
	 *  TRUE if successful, FALSE otherwise.
	 */
	public int removeColumn(int col)
	{
		// gboolean gda_data_model_remove_column (GdaDataModel *model,  gint col);
		return gda_data_model_remove_column(gdaDataModel, col);
	}
	
	
	/**
	 * Calls the specified callback function for each row in the data model.
	 * This will just traverse all rows, and call the given callback
	 * function for each of them.
	 * The callback function must have the following form:
	 *  gboolean foreach_func (GdaDataModel *model, GdaRow *row, gpointer user_data)
	 * where "row" would be the row being read, and "user_data" the parameter
	 * specified in user_data in the call to gda_data_model_foreach.
	 * This callback function can return FALSE to stop the processing. If
	 * it returns TRUE, processing will continue until no rows remain.
	 * model :
	 *  a GdaDataModel object.
	 * func :
	 *  callback function.
	 * user_data :
	 *  context data for the callback function.
	 */
	public void foreac(GdaDataModelForeachFunc func, void* userData)
	{
		// void gda_data_model_foreach (GdaDataModel *model,  GdaDataModelForeachFunc func,  gpointer user_data);
		gda_data_model_foreach(gdaDataModel, func, userData);
	}
	
	/**
	 * Checks whether this data model is in updating mode or not. Updating
	 * mode is set to TRUE when gda_data_model_begin_update has been
	 * called successfully, and is not set back to FALSE until either
	 * gda_data_model_cancel_update or gda_data_model_end_update have
	 * been called.
	 * model :
	 *  a GdaDataModel object.
	 * Returns :
	 *  TRUE if updating mode, FALSE otherwise.
	 */
	public int hasChanged()
	{
		// gboolean gda_data_model_has_changed (GdaDataModel *model);
		return gda_data_model_has_changed(gdaDataModel);
	}
	
	/**
	 * Starts update of this data model. This function should be the
	 * first called when modifying the data model.
	 * model :
	 *  a GdaDataModel object.
	 * Returns :
	 *  TRUE on success, FALSE if there was an error.
	 */
	public int beginUpdate()
	{
		// gboolean gda_data_model_begin_update (GdaDataModel *model);
		return gda_data_model_begin_update(gdaDataModel);
	}
	
	/**
	 * Cancels update of this data model. This means that all changes
	 * will be discarded, and the old data put back in the model.
	 * model :
	 *  a GdaDataModel object.
	 * Returns :
	 *  TRUE on success, FALSE if there was an error.
	 */
	public int cancelUpdate()
	{
		// gboolean gda_data_model_cancel_update (GdaDataModel *model);
		return gda_data_model_cancel_update(gdaDataModel);
	}
	
	/**
	 * Approves all modifications and send them to the underlying
	 * data source/store.
	 * model :
	 *  a GdaDataModel object.
	 * Returns :
	 *  TRUE on success, FALSE if there was an error.
	 */
	public int endUpdate()
	{
		// gboolean gda_data_model_end_update (GdaDataModel *model);
		return gda_data_model_end_update(gdaDataModel);
	}
	
	/**
	 * Converts the given model into a comma-separated series of rows.
	 * model :
	 *  a GdaDataModel object.
	 * Returns :
	 *  the representation of the model. You should free this
	 * string when you no longer need it.
	 */
	public char[] toCommaSeparated()
	{
		// gchar* gda_data_model_to_comma_separated (GdaDataModel *model);
		return Str.toString(gda_data_model_to_comma_separated(gdaDataModel) );
	}
	
	/**
	 * Converts the given model into a tab-separated series of rows.
	 * model :
	 *  a GdaDataModel object.
	 * Returns :
	 *  the representation of the model. You should free this
	 * string when you no longer need it.
	 */
	public char[] toTabSeparated()
	{
		// gchar* gda_data_model_to_tab_separated (GdaDataModel *model);
		return Str.toString(gda_data_model_to_tab_separated(gdaDataModel) );
	}
	
	/**
	 * Converts the given model into a XML representation.
	 * model :
	 *  a GdaDataModel object.
	 * standalone :
	 *  whether ...
	 * Returns :
	 *  the representation of the model. You should free this
	 * string when you no longer need it.
	 */
	public char[] toXml(int standalone)
	{
		// gchar* gda_data_model_to_xml (GdaDataModel *model,  gboolean standalone);
		return Str.toString(gda_data_model_to_xml(gdaDataModel, standalone) );
	}
	
	/**
	 * Converts a GdaDataModel into a xmlNodePtr (as used in libxml).
	 * model :
	 *  a GdaDataModel object.
	 * name :
	 *  name to use for the XML resulting table.
	 * Returns :
	 *  a xmlNodePtr representing the whole data model.
	 */
	public xmlNodePtr toXmlNode(char[] name)
	{
		// xmlNodePtr gda_data_model_to_xml_node (GdaDataModel *model,  const gchar *name);
		return gda_data_model_to_xml_node(gdaDataModel, Str.toStringz(name));
	}
	
	/**
	 * Adds the data from a XML node to the given data model.
	 * model :
	 *  a GdaDataModel.
	 * node :
	 *  a XML node representing a lt;datagt; XML node.
	 * Returns :
	 *  TRUE if successful, FALSE otherwise.
	 */
	public int addDataFromXmlNode(xmlNodePtr node)
	{
		// gboolean gda_data_model_add_data_from_xml_node  (GdaDataModel *model,  xmlNodePtr node);
		return gda_data_model_add_data_from_xml_node(gdaDataModel, node);
	}
	
	/**
	 * Gets the text of command that generated this data model.
	 * model :
	 *  a GdaDataModel.
	 * Returns :
	 *  a string with the command issued.
	 */
	public char[] getCommandText()
	{
		// const gchar* gda_data_model_get_command_text (GdaDataModel *model);
		return Str.toString(gda_data_model_get_command_text(gdaDataModel) );
	}
	
	/**
	 * Sets the command text of the given model.
	 * model :
	 *  a GdaDataModel.
	 * txt :
	 *  the command text.
	 */
	public void setCommandText(char[] txt)
	{
		// void gda_data_model_set_command_text (GdaDataModel *model,  const gchar *txt);
		gda_data_model_set_command_text(gdaDataModel, Str.toStringz(txt));
	}
	
	/**
	 * Gets the type of command that generated this data model.
	 * model :
	 *  a GdaDataModel.
	 * Returns :
	 *  a GdaCommandType.
	 */
	public GdaCommandType getCommandType()
	{
		// GdaCommandType gda_data_model_get_command_type (GdaDataModel *model);
		return gda_data_model_get_command_type(gdaDataModel);
	}
	
	/**
	 * Sets the type of command that generated this data model.
	 * model :
	 *  a GdaDataModel.
	 * type :
	 *  the type of the command (one of GdaCommandType)
	 */
	public void setCommandType(GdaCommandType type)
	{
		// void gda_data_model_set_command_type (GdaDataModel *model,  GdaCommandType type);
		gda_data_model_set_command_type(gdaDataModel, type);
	}
}
