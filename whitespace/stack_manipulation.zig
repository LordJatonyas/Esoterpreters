const std = @import("std");

pub const Stack_IMP = struct {
    stack: std.ArrayList(i64),

    pub fn push(self: *Stack_IMP, num: i64) void {
        try self.stack.append(num);
    }
};
