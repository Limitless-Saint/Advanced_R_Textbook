#Advanced R - Chapter 2 - notes & exercises - Notepad++ file


Notes:

functions used: obj_addr(), tracemem(), ref()


- differentiation between Names and Vlaues w.r.t binding
- identifiers to an object
- syntactic vs non- syntactic names
- make.names() - Make syntactically valid names out of character vectors.
- Copy-on-modify behaviour
- not just names (i.e. variables) that point to values; elements of lists do too. list is more complex because instead of storing the values itself, it stores references to them
- shallow copy vs deep copy











Sec 2.2 - Exercises

2) The following code accesses the mean function in multiple ways. Do they all point to the same underlying function object? Verify this
with lobstr::obj_addr().

- Yes. apparently a function will always have same object address


3) By default, base R data import functions, like read.csv(), will automatically convert non-syntactic names to syntactic ones. Why might this be problematic? What option allows you to suppress this behaviour

- It can be problematic because if you have a set of non-syntatic symbols such as numbers used to order data in some fashion but automatically converting the non-syntactic names there is a chance the same ordered structure may be destroyed.

4) What rules does make.names() use to convert non-syntactic names into syntactic ones?

 - All invalid characters are translated to ".". A missing value is translated to "NA". Names which match R keywords have a dot appended to them. Duplicated values are altered by make.unique.

5) 


Sec 2.3 - Exercises

1) Why is tracemem(1:10) not useful?

- tracemem() is tracing the copy behaviour of the object only when it has a name bineded to it. 