#ifndef INI_RW
#define INI_RW

#include <string>
#include <unordered_map>
#include <vector>

// 定义一个结构来存储 INI 文件的内容
typedef struct INI {
    std::unordered_map<std::string, std::unordered_map<std::string, std::string>> sections;
} INI;

// 声明加载 INI 文件的函数
INI* ini_load(const char* path);

// 其他函数声明...
#endif // INI_RW
