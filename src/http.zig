const std = @import("std");

pub const HttpMethod = enum {
    GET,
    POST,
    PUT,
    PATCH,
    DELETE,

    // I didn't actually know these existed
    HEAD,
    CONNECT,
    OPTIONS,
    TRACE,
};

pub const HttpStatus = enum {};

pub const HttpHeaders = std.StringHashMap([]const u8);

// raw representation of an HTTP Message
pub const HttpMessage = struct {
    method: HttpMethod,
    headers: HttpHeaders,
    body: []const u8, // keep as raw string, handle this elsewhere
};
