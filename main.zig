const std = @import("std");

pub fn main() !void {
    //  std.io.getStdIn()を呼び出して、標準入力ファイルを取得しています。
    // reader()メソッドを呼び出して、ファイルのリーダーを取得しています。
    var stdin = std.io.getStdIn().reader();
    std.debug.print("stdin: {}\n", .{stdin});

    // データを読み取るためのバッファを定義しています。
    var buffer: [1024]u8 = undefined;

    // stdinからデータを読み取ります。
    std.debug.print("input: ", .{});
    var bytesRead = try stdin.read(buffer[0..]);
    std.debug.print("bytesRead: {}\n", .{bytesRead});

    _ = try std.io.getStdOut().write(buffer[0..bytesRead]);
}
