//
// Quiz time. See if you can make this program work!
//
// Solve this any way you like, just be sure the output is:
//
//     my_num=42
//
const std = @import("std");

const NumError = error{IllegalNumber};

pub fn main() void {
    const stdout = std.io.getStdOut().writer();
    // TODO: e' possibile ottenere un if-expression con blocchi multiriga { } senza supporto per esempio di uno switch?
    const my_num: u32 = if (getNumber()) |n| n else |err| switch (err) {
        NumError.IllegalNumber => 42,
    };
    stdout.print("my_num={}\n", .{my_num}) catch {};
    // Alternativa tenere try stdout.print e cambiare il returntype di main da void a anyerror!void
}

// This function is obviously weird and non-functional. But you will not be changing it for this quiz.
fn getNumber() NumError!u32 {
    if (false) return NumError.IllegalNumber;
    return 42;
}
