{
  "targets": [
    {
      "target_name": "tree_sitter_move_binding",
      "dependencies": [
        "<!(node -p \"require('node-addon-api').targets\"):node_addon_api_except",
      ],
      "include_dirs": [
        "src",
      ],
      "sources": [
        "bindings/node/binding.cc",
        "src/parser.c",
        # NOTE: if your language has an external scanner, add it here.
<<<<<<< HEAD
      ],
      "cflags_c": [
        "-std=c11",
      ],
=======
      ],
      "conditions": [
        ["OS!='win'", {
          "cflags_c": [
            "-std=c11",
          ],
        }, { # OS == "win"
          "cflags_c": [
            "/std:c11",
            "/utf-8",
          ],
        }],
      ],
>>>>>>> fdf714604847dbf9b3217892abf05061f168d8fb
    }
  ]
}
