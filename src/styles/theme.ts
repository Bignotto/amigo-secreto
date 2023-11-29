import { extendTheme } from "@chakra-ui/react";

export const theme = extendTheme({
    fonts: {
        body: "var(--font-textFont)",
        heading: "var(--font-headingFont)",
        black: "var(--font-blackFont)",
        logo: "var(--font-logoFont)",
    },
    styles: {
        global: {
            body: {
                bg: "#CBD5E0",
            },
        },
    },
});
