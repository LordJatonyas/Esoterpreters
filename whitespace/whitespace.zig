const std = @import("std");
const print = std.debug.print;
const stack_manipulation = @import("stack_manipulation.zig");

pub fn main() void {
    std.debug.print("{s}\n", .{"Hello world!"});
    const stack = [_]i64{ 1, 2, 3, 4, 5 };
    const elem = [1]i64{32};
    print("{any}\n", .{stack ++ elem});
}
