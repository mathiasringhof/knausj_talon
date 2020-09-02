# XXX - reorder some dicts for human readability so we see functions and libraries
# first

from talon import Context, Module, actions, settings

mod = Module()

ctx = Context()

ctx.lists["self.rust_types"] = {
    "bool": "bool",
    "boolean": "bool",
    "character": "char",
    "char": "char",
    "short": "i8",
    "I eight": "i8",
    "unsigned eight": "i8",
    "long": "i32",
    "I thirty two": "i32",
    "unsigned thirty two": "u32",
    "long long": "i64",
    "I sixty four": "i64",
    "unsigned sixty four": "u64",
    "int": "i16",
    "I sixty": "i16",
    "unsigned sixty": "u16",
    "integer": "i16",
    "double": "f64",
    "f sixty four": "f64",
    "struct": "struct",
    "struck": "struct",
    "num": "enum",
    "float": "f32",
    "f thirty two": "f32",
    "slice": "&str"
}


ctx.lists["self.rust_functions"] = {
    "format": "format!",
    "print": "print!",
    "print line": "println!",
    "print error": "eprint!",
    "print line error": "eprintln!",
}

ctx.lists["self.rust_libraries"] = {
    "standard file system": "std::fs::",
    "standard i/o": "std::io::",
    "standard path": "std::path::",
}

mod.list("rust_types", desc="Common Rust types")
mod.list("rust_functions", desc="Standard Rust functions")
mod.list("rust_libraries", desc="Common Rust libraries")


@mod.capture
def cast(m) -> str:
    "Returns a string"


@mod.capture
def rust_types(m) -> str:
    "Returns a string"


@mod.capture
def rust_functions(m) -> str:
    "Returns a string"


@mod.capture
def rust_libraries(m) -> str:
    "Returns a string"


@ctx.capture(rule="{self.rust_types}")
def rust_types(m) -> str:
    return m.rust_types


@ctx.capture(rule="{self.rust_functions}")
def rust_functions(m) -> str:
    return m.rust_functions


@ctx.capture(rule="{self.rust_libraries}")
def rust_libraries(m) -> str:
    return m.rust_libraries
