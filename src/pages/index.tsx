import { Flex, Text } from "@chakra-ui/react";

export default function Home() {
    return (
        <Flex justifyContent={"center"} alignItems={"center"}>
            <Text fontFamily={"logo"} fontSize={"4xl"} color={"blue.700"}>
                Amigo Secreto
            </Text>
        </Flex>
    );
}
