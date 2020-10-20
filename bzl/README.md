# Bazel

## Configuration

`src/configuration.ml` interrogates the host to discover a couple of args to pass
to `cppo`. With Bazel we can dispense with this.

* OCaml version: constructible from an OBazl config setting.

* Word size: we can construct this from built-in Bazel config settings.  See `bzl/host/BUILD.bazel`

* Dependency on module `Bytes`: the logic is "if package 'bytes' is
available, pass '-D WITH_BYTES'. The implementation in configure.ml
pulls a little shell trickery to get this. It runs a function that
runs `ocamlfind query` with `-format "-D WITH_BYTES` to find package
`bytes`. If the package is found, the `-D WITH_BYTES` is printed to
stdout; otherwise, the error msg goes to stderr and stdout gets
nothing. Then stdout is used to construct the output. With Bazel we
just use a command-line flag `--//:bytes`, which defaults to True, and
leave it up to the user to set it appropriately.


