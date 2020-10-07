CPPO_OCAML_VERSION = ["OCAML 407"]

CPPO_WITH_BYTES = select({
    "//bzl/config:with_bytes": ["WITH_BYTES"],
    "//conditions:default": [],
})

CPPO_WORD_SIZE = select({
    "//bzl/host:m32": ["WORD_SIZE_32"],
    # "//bzl/host:m64": ["WORD_SIZE_64"],
    "//conditions:default": [],
})

