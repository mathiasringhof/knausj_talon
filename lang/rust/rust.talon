mode: user.rust
mode: command
and code.language: rust
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic
#tag(): user.code_block_comment
settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"
action(user.code_operator_address_of): "&"
action(user.code_operator_structure_dereference): "*"
action(user.code_operator_lambda):
    insert("|| ")
    key(left:2)
action(user.code_operator_subscript):
    insert("[]")
    key(left)
action(user.code_operator_assignment): " = "
action(user.code_operator_subtraction): " - "
action(user.code_operator_subtraction_assignment): " -= "
action(user.code_operator_addition): " + "
action(user.code_operator_addition_assignment): " += "
action(user.code_operator_multiplication): " * "
action(user.code_operator_multiplication_assignment): " *= "
action(user.code_operator_exponent): " ** "
action(user.code_operator_division): " / "
action(user.code_operator_division_assignment): " /= "
action(user.code_operator_modulo): " % "
action(user.code_operator_modulo_assignment): " %= "
action(user.code_operator_equal): " == "
action(user.code_operator_not_equal): " != "
action(user.code_operator_greater_than): " > "
action(user.code_operator_greater_than_or_equal_to): " >= "
action(user.code_operator_less_than): " < "
action(user.code_operator_less_than_or_equal_to): " <= "
action(user.code_operator_and): " && "
action(user.code_operator_or): " || "
action(user.code_operator_bitwise_and): " & "
action(user.code_operator_bitwise_and_assignment): " &= "
action(user.code_operator_bitwise_or): " | "
action(user.code_operator_bitwise_or_assignment): " |= "
action(user.code_operator_bitwise_exclusive_or): " ^ "
action(user.code_operator_bitwise_exclusive_or_assignment): " ^= "
action(user.code_operator_bitwise_left_shift): " << "
action(user.code_operator_bitwise_left_shift_assignment): " <<= "
action(user.code_operator_bitwise_right_shift): " >> "
action(user.code_operator_bitwise_right_shift_assignment): " >>= "
action(user.code_self): "self"
action(user.code_state_if):
    insert("if ")
action(user.code_state_else_if):
    insert("else if ")
action(user.code_state_else):
    insert("else ")
action(user.code_state_switch): "match "
action(user.code_state_for):
    user.code_state_for_each()
action(user.code_state_for_each):
    insert("for in ")
    key(left)
    edit.word_left()
    key(space)
    edit.left()
action(user.code_state_while):
    insert("while ")
    edit.left()
action(user.code_type_struct): "struct "
action(user.code_import): "use "
action(user.code_comment): "//"
action(user.code_block_comment):
    insert("/*")
    key(enter)
    key(enter)
    insert("*/")
    edit.up()
action(user.code_block_comment_prefix): "/*"
action(user.code_block_comment_suffix): "*/"
action(user.code_private_function):
    insert("fn ")
action(user.code_protected_function):
    user.code_private_function()
action(user.code_public_function):
	insert("pub fn ")
action(user.code_state_return):
	insert("return ")

#rust-specicic grammars
state attribute:
        insert("#[]")
        key(left)


state implementation: "impl "
op path: "::"


#.py file implementation
call <user.rust_functions>:
    insert("{rust_functions}();")
    key(left:2)

let <phrase>:
    insert("let ")
    insert(user.formatted_text(phrase, "SNAKE_CASE"))
let mute <phrase>:
    insert("let mut ")
    insert(user.formatted_text(phrase, "SNAKE_CASE"))

type <user.rust_types>: ": {rust_types}"