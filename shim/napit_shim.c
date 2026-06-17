#include <stdio.h>
#include <stdint.h>
#include <string.h>

int32_t napit_write_file2(const char* path, const char* content, int64_t content_len) {
    if (!path || !content) return 0;
    
    const char* actual_content = content;
    // Check if it's a Nitpick dynamic string (has a 24-byte header)
    // The length is stored at offset 8 as a 64-bit integer.
    uint64_t stored_len = *(uint64_t*)(content + 8);
    if (stored_len == (uint64_t)content_len) {
        // It has the 24-byte header!
        actual_content = content + 24;
    }
    
    FILE *fp = fopen(path, "wb");
    if (!fp) return 0;
    size_t written = fwrite(actual_content, 1, content_len, fp);
    fclose(fp);
    return written == content_len ? 1 : 0;
}
