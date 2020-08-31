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
    "long": "i32",
    "int": "i16",
    "integer": "i16",
    "double": "f64",
    "struct": "struct",
    "struck": "struct",
    "num": "enum",
    "float": "f32",
}


ctx.lists["self.rust_functions"] = {
    "format": "format!",
    "print": "print!",
    "print line": "println!",
    "print error": "eprint!",
    "print line error": "eprintln!",
}

mod.list("rust_types", desc="Common Rust types")
mod.list("rust_functions", desc="Standard Rust functions")


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
def function(m) -> str:
    "Returns a string"


@ctx.capture(rule="{self.rust_types}")
def rust_types(m) -> str:
    return m.rust_types


@ctx.capture(rule="{self.rust_functions}")
def rust_functions(m) -> str:
    return m.rust_functions
