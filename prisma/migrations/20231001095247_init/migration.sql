-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "likeThings" TEXT,
    "dontLikeThings" TEXT,
    "shoeSize" TEXT,
    "clothesSize" TEXT,
    "giftList" TEXT,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "friends_groups" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "draw_date" TIMESTAMP(3),
    "party_date" TIMESTAMP(3),
    "party_location" TEXT,
    "average_gift_price" INTEGER NOT NULL DEFAULT 0,
    "drawn" BOOLEAN NOT NULL DEFAULT false,
    "group_owner_id" TEXT NOT NULL,

    CONSTRAINT "friends_groups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserFriendsGroup" (
    "id" SERIAL NOT NULL,
    "user_id" TEXT NOT NULL,
    "friends_group_id" INTEGER NOT NULL,
    "drawnFriendId" TEXT,

    CONSTRAINT "UserFriendsGroup_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- AddForeignKey
ALTER TABLE "friends_groups" ADD CONSTRAINT "friends_groups_group_owner_id_fkey" FOREIGN KEY ("group_owner_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserFriendsGroup" ADD CONSTRAINT "UserFriendsGroup_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserFriendsGroup" ADD CONSTRAINT "UserFriendsGroup_friends_group_id_fkey" FOREIGN KEY ("friends_group_id") REFERENCES "friends_groups"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserFriendsGroup" ADD CONSTRAINT "UserFriendsGroup_drawnFriendId_fkey" FOREIGN KEY ("drawnFriendId") REFERENCES "users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
