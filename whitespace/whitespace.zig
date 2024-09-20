const std = @import("std");
const stack_manipulation = @import("stack_manipulation.zig");

const allocator = std.debug.global_allocator;
const warn = std.debug.warn;

pub fn main() void {
    std.debug.print("{s}\n", .{"Hello world!"});

    const Vec64 = std.ArrayList(i64);
    var stack = Vec64.init(allocator);

    stack_manipulation.Stack_IMP(stack).push(32);
}
