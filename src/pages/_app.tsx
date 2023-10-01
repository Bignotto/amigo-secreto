import { ChakraProvider } from "@chakra-ui/react";
import type { AppProps } from "next/app";
import { theme } from "../styles/theme";

import { Pacifico, Roboto } from "next/font/google";

const textFont = Roboto({ subsets: ["latin"], weight: "400" });
const headingFont = Roboto({ subsets: ["latin"], weight: "700" });
const blackFont = Roboto({ subsets: ["latin"], weight: "900" });
const logoFont = Pacifico({ subsets: ["latin"], weight: "400" });

export default function App({ Component, pageProps }: AppProps) {
    return (
        <>
            <style jsx global>
                {`
                    :root {
                        --font-textFont: ${textFont.style.fontFamily};
                        --font-headingFont: ${headingFont.style.fontFamily};
                        --font-blackFont: ${blackFont.style.fontFamily};
                        --font-logoFont: ${logoFont.style.fontFamily};
                    }
                `}
            </style>
            <ChakraProvider theme={theme}>
                <Component {...pageProps} />
            </ChakraProvider>
        </>
    );
}
