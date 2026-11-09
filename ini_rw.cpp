#include "ini_rw.h"
#include <fstream>
#include <sstream>
#include <iostream>

// 定义加载 INI 文件的函数
INI* ini_load(const char* path) {
    INI* ini = new INI();
    std::ifstream file(path);
    if (!file.is_open()) {
        std::cerr << "无法打开文件: " << path << std::endl;
        return nullptr;
    }

    std::string line;
    std::string currentSection = "DEFAULT"; // 默认节
    while (std::getline(file, line)) {
        // 去掉行首和行尾的空格
        line.erase(0, line.find_first_not_of(" \t"));
        line.erase(line.find_last_not_of(" \t") + 1);

        // 跳过注释和空行
        if (line.empty() || line[0] == ';') {
            continue;
        }

        // 检测节
        if (line[0] == '[' && line.back() == ']') {
            currentSection = line.substr(1, line.size() - 2);
            continue;
        }

        // 检测键值对
        size_t pos = line.find('=');
        if (pos != std::string::npos) {
            std::string key = line.substr(0, pos);
            std::string value = line.substr(pos + 1);
            ini->sections[currentSection][key] = value;
        }
    }

    file.close();
    return ini;
}
