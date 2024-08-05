(address_literal) @number
(num_literal) @number
(byte_string_literal) @string
(hex_string_literal) @string
(bool_literal) @boolean
(global_literal) @variable @constant
(friend_param) @module
(package_param) @module

(module_identifier) @class @variable @namespace
(struct_identifier) @struct @variable @type
(function_identifier) @function
(variable_identifier) @variable
(type_parameter_identifier) @type
(primitive_type) @type
(field_identifier) @property
(constant_identifier) @property.static.constant

(use_member
  module: (identifier)? @member @namespace
  member: (identifier)? @member @variable @type
  alias: (identifier)? @member)
(use_fun
  (module_access
    member: (identifier) @function))
(spec_let
  name: (identifier) @property)
(spec_property
  (identifier) @property)
(spec_variable
  name: (identifier) @variable)
(apply_type
  (module_access
    (identifier) @type))
(apply_type
  (module_access
    (identifier) @type.defaultLibrary
    (#match? @type.defaultLibrary "^u8|u16|u32|u64|u128|bool|address|signer|vector$")))
(call_expression
  (module_access
    (identifier) @function))
(macro_call_expression
  (macro_module_access) @function.macro)
(pack_expression
  (module_access
    (identifier) @struct @type))
(bind_unpack
  (module_access
    (identifier) @struct @type))
(dot_expression
  access: (name_expression) @property)

(dot_expression
  access: (index_expression
    expr: (name_expression) @property))

(quantifier_binding
  (identifier) @parameter)


(function_parameters
  (function_parameter
    name: (variable_identifier) @parameter.modification
    type: (ref_type
            mutable: ("&") (mutable_keyword))))
(function_parameters
  (function_parameter
    name: (variable_identifier) @parameter.readonly
    type: (ref_type
            mutable: "&")))

(binary_expression
  operator: (binary_operator) @operator)
(unary_op) @operator


(spec_apply_name_pattern) @struct

(annotation_item
  (annotation_list
    name: (identifier) @lsp.type.decorator))

(annotation
  (annotation_item
    (annotation_expr
      name: (identifier) @lsp.type.decorator)))

(line_comment) @comment
(
  (line_comment) @comment.documentation
  (#match? @comment.documentation "^\\\/\\\/\\\/([^/].*)?$")
)
(block_comment) @comment
(
  (block_comment) @comment.documentation
  (#match? @comment.documentation "^\\\/\\\*\\\*(\\n|[^*].*)")
)

(condition_kind) @macro
(invariant_modifier) @modifier

"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

(type_arguments
  "<" @punctuation.bracket
  ">" @punctuation.bracket)

(type_parameters
  "<" @punctuation.bracket
  ">" @punctuation.bracket)

"::" @punctuation.delimiter
":" @punctuation.delimiter
"." @punctuation.delimiter
"," @punctuation.delimiter
";" @punctuation.delimiter

"const" @keyword
"as" @keyword
"address" @keyword
"use" @keyword
"entry" @keyword
"friend" @keyword
"has" @keyword
"module" @keyword
"native" @keyword
"struct" @keyword
"public" @keyword
"fun" @keyword
"spec" @keyword
"schema" @keyword
"include" @keyword
"apply" @keyword
"to" @keyword
"with" @keyword
"internal" @keyword
"pragma" @keyword
"global" @keyword
"local" @keyword
"copy" @keyword
"drop" @keyword
"key" @keyword
"store" @keyword
"move" @keyword
"let" @keyword
"if" @keyword
"else" @keyword
"while" @keyword
"loop" @keyword
"return" @keyword
"abort" @keyword
"break" @keyword
"continue" @keyword
"phantom" @keyword
(vector_keyword) @keyword
(mutable_keyword) @keyword
