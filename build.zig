const std = @import("std");

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "64tass",
        .root_module = b.createModule(.{
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        }),
    });
    exe.addCSourceFiles(.{
        .files = &.{
            "64tass.c",
            "opcodes.c",
            "str.c",
            "avl.c",
            "my_getopt.c",
            "eval.c",
            "error.c",
            "section.c",
            "encoding.c",
            "ternary.c",
            "file.c",
            "values.c",
            "variables.c",
            "mem.c",
            "isnprintf.c",
            "macro.c",
            "obj.c",
            "floatobj.c",
            "addressobj.c",
            "codeobj.c",
            "strobj.c",
            "listobj.c",
            "boolobj.c",
            "bytesobj.c",
            "intobj.c",
            "bitsobj.c",
            "functionobj.c",
            "instruction.c",
            "unicode.c",
            "unicodedata.c",
            "listing.c",
            "registerobj.c",
            "dictobj.c",
            "namespaceobj.c",
            "operobj.c",
            "gapobj.c",
            "typeobj.c",
            "noneobj.c",
            "longjump.c",
            "wchar.c",
            "math.c",
            "arguments.c",
            "optimizer.c",
            "opt_bit.c",
            "labelobj.c",
            "errorobj.c",
            "macroobj.c",
            "mfuncobj.c",
            "symbolobj.c",
            "anonsymbolobj.c",
            "memblocksobj.c",
            "foldobj.c",
            "main.c",
            "console.c",
            "encobj.c",
            "argvalues.c",
        },
    });

    b.installArtifact(exe);
}
