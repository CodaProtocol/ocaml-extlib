PACKAGES = {
    "bytes": [],
    "base64": ["3.4.0"],
}

opam = struct(
    version = "2.0",
    switches  = {
        "mina-0.1.0": struct(
            default  = True,
            compiler = "4.07.1",
            packages = PACKAGES
        ),
        "4.07.1": struct(
            compiler = "4.07.1",
            packages = PACKAGES
        ),
    }
)
