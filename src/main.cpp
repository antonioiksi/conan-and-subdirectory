#define CROW_MAIN
#include "crow/crow_all.h"
#include "yaml-cpp/yaml.h"

int main()
{
	YAML::Node config = YAML::LoadFile("../../test.yaml");

	if (config["os"]) {
		std::cout << "OS: " << config["os"].as<std::string>() << "\n";
	}

    crow::SimpleApp app;

    CROW_ROUTE(app, "/")([]() {
        std::string res = "parse_status()";
        return res;
    });

    app.port(18080).multithreaded().run();
    return 0;
}