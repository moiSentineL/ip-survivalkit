## Notes for `pandas`

See also: https://pandas.pydata.org/docs/user_guide/10min.html

### 🔑 Core Ideas (TL;DR)
- **Series** is 1D data structure in the form of a column.
    - it can be formed using lists, dictionaries, `ndarrays`. 
- **Dataframes** are 2D spreadsheet like structure.
    - they can be formed from series, dicts, `ndarrays`.
    - they can be comverted to and from csv's, sql tables and so on.
    - you can do diverse manipulation with them
- The array is the basic unit of this whole thing.
- row labels = indexes, column labels = column names
- use `lambda` for extensive operations.
### 🔧 Key Commands / Functions / Syntax
- `pd.Series({array|dict|list}, name=, index=)`: creates Series using an array or dict or list. Add index using the `index=` argument.
- `{Series|Dataframe}.loc[:, lambda x : (conditional)]`
	- you can access rows/columns using labels via `.loc[]`
	- the `:, ` means that you are spanning over *all* the rows and columns.
	- additionally, use `lambda` function to sort things or do conditionals.
- `.heads()` and `.tails()` - pretty easy
- `pd.DataFrame(<dictionary with columns/row values>)`: creates DataFrame with given values.
- `df.groupby(['list of things you want to group by?'])['thing that you want to operate on'].{size|sum|count}()`
	- this groups by certain columns, and then you can operate on a specific column.
	- eg. `sales.groupby('category')['expenditure'].sum()`
- Show row and column labels:
	- `df.index` and `df.columns`
	- set indices using `df.index = [some list containing indices]`
- `df.dtypes` for the data types of each column
- `df.shape` for the dimensions of the dataframe.
#### Operations
- `df["some_column"] = "bruh"`: adds a column named `some_column` with all of its values as "bruh".
- deletion works just like a dictionary `del df["lol"]`
- `df.rename(columns={"A": "a", "B":"b"})`: rename columns `A->a` and `B->b`.
- `df.to_{list|numpy}()`: converts dataframe to list or numpy, respectively.
#### CSV
- `pd.read_csv('path/to/csv')` to get a dataframe from the csv
- `pd.to_csv('path/to/csv')` to export a dataframe to a csv.
- `pd.fillna(value={'A': 0, 'B': 'alright'})`  
	- this fills every `NaN` value in `A` with `0` and in `B` with `alright`.
### 🪛 Common Use Cases / Scenarios
- Counting shit
	- For example, you have to count the number of instances of a certain value in a column, then you do:
	- `soc_med.groupby("Relationship_Status").count() # this counts the number of rows with given column value`
- Filtering shit
	- `music.loc[lambda x : x["artist"] == "Gojira"]`
- Finding uniqueness
	- use `.unique()` to find unique rows.
- Check practicals in `ipynb` for more.
### 🧠 Gotchas / Misconceptions
- labels != values
	- they are just the indices or the column names
	- you can set them yourself.
- `jupyter` is really good for processing `pandas` and `matplotlib`.
- arrays != lists
	- arrays are more mathematically accurate.

---
*nibir sankar, 2025.*

