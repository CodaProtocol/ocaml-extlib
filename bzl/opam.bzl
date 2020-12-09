PACKAGES = {
    # "angstrom": ["0.11.2"],
    # "angstrom-async": ["0.15.0"],
    # "angstrom-unix": ["0.15.0"],
    # "async_ssl": ["v0.12.0"],
    "bytes": [], # "[distributed with OCaml 4.02 or above]"],
    "base64": ["3.4.0"],
    # "bitstring": ["3.1.1"],
    # "js_of_ocaml_ppx": ["3.6.0"],
    # "ppx_base": ["v0.12.0"],
    # "ppx_bin_prot": ["v0.12.0"
    # "ppxlib": ["0.8.1"],
    # "yojson": ["1.7.0"],
}

opam = struct(
    version = "2.0",
    switches  = {
        "mina-0.1.0": struct(
            compiler = "4.07.1",
            packages = PACKAGES
        ),
        "4.07.1": struct(
            compiler = "4.07.1",
            packages = PACKAGES
        ),
    }
)
