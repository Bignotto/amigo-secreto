import { clerkClient } from "@clerk/nextjs/server";
import { NextApiRequest, NextApiResponse } from "next";

export default async function handler(
    req: NextApiRequest,
    res: NextApiResponse
) {
    const token = req.headers.authorization;
    const { userId } = req.query;

    if (!token) return res.status(401).json({ message: "Denied!" });

    try {
        await clerkClient.users.deleteUser(`${userId}`);
        return res.status(200).json({ message: "Success" });
    } catch (error) {
        console.log(error);
        return res.status(500).json({ error: "Error deleting user" });
    }
}
