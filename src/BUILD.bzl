ALWAYS_LINK = select({
    "//bzl/config:enable_always_link": ["-linkall"],
    "//conditions:default": [],
})
OUTPUT_CMT = select({
    "//bzl/config:enable_output_cmt": ["-bin-annot"],
    "//conditions:default": [],
})
DEBUG = select({
    "//bzl/config:enable_debug": ["-g"],
    "//conditions:default": [],
})
VERBOSE = select({
    "//bzl/config:enable_verbose": ["-verbose"],
    "//conditions:default": [],
})

COMMON_DEPS = ["@opam//pkg:bytes"]

COMMON_OPTS = [
    "-strict-formats",
    "-short-paths",
    "-w",
    # "+A",
    "+A-3-27-39-42-44-48-50",
    # "-warn-error",
    # "+A-3-44",
] + ALWAYS_LINK + OUTPUT_CMT + DEBUG + VERBOSE

ARCHIVE_OPTS = COMMON_OPTS
INTF_OPTS = COMMON_OPTS
IMPL_OPTS = COMMON_OPTS
