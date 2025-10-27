Lua strings are **immutable**, meaning concatinating lots of strings is **very slow**. Tables are mutable so **adding strings to a table is very fast** 🚀.
I tested ~527.5x speedup using this class (see example)
