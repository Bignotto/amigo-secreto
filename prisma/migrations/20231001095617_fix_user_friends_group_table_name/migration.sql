/*
  Warnings:

  - You are about to drop the `UserFriendsGroup` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "UserFriendsGroup" DROP CONSTRAINT "UserFriendsGroup_drawnFriendId_fkey";

-- DropForeignKey
ALTER TABLE "UserFriendsGroup" DROP CONSTRAINT "UserFriendsGroup_friends_group_id_fkey";

-- DropForeignKey
ALTER TABLE "UserFriendsGroup" DROP CONSTRAINT "UserFriendsGroup_user_id_fkey";

-- DropTable
DROP TABLE "UserFriendsGroup";

-- CreateTable
CREATE TABLE "user_friends_group" (
    "id" SERIAL NOT NULL,
    "user_id" TEXT NOT NULL,
    "friends_group_id" INTEGER NOT NULL,
    "drawnFriendId" TEXT,

    CONSTRAINT "user_friends_group_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "user_friends_group" ADD CONSTRAINT "user_friends_group_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_friends_group" ADD CONSTRAINT "user_friends_group_friends_group_id_fkey" FOREIGN KEY ("friends_group_id") REFERENCES "friends_groups"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_friends_group" ADD CONSTRAINT "user_friends_group_drawnFriendId_fkey" FOREIGN KEY ("drawnFriendId") REFERENCES "users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
