-- CreateTable
CREATE TABLE "User" (
    "slug" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "birth" TEXT,
    "city" TEXT,
    "state" TEXT,
    "avatar" TEXT NOT NULL DEFAULT 'default.jpg',
    "cover" TEXT NOT NULL DEFAULT 'default.jpg',
    "bio" TEXT,
    "link" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("slug")
);

-- CreateTable
CREATE TABLE "Tweet" (
    "id" SERIAL NOT NULL,
    "userSlug" TEXT NOT NULL,
    "body" TEXT NOT NULL,
    "image" TEXT,
    "createAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "answerOf" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "Tweet_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TweetLike" (
    "id" SERIAL NOT NULL,
    "userSlug" TEXT NOT NULL,
    "tweetId" INTEGER NOT NULL,

    CONSTRAINT "TweetLike_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AnswerLike" (
    "id" SERIAL NOT NULL,
    "userSlug" TEXT NOT NULL,
    "answerId" INTEGER NOT NULL,

    CONSTRAINT "AnswerLike_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Follow" (
    "id" SERIAL NOT NULL,
    "userSlug" TEXT NOT NULL,
    "user2Slug" TEXT NOT NULL,

    CONSTRAINT "Follow_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Trend" (
    "id" SERIAL NOT NULL,
    "hashtag" TEXT NOT NULL,
    "counter" INTEGER NOT NULL DEFAULT 1,
    "updateAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Trend_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Answer" (
    "id" SERIAL NOT NULL,
    "body" TEXT NOT NULL,
    "tweetId" INTEGER NOT NULL,
    "image" TEXT,
    "userSlug" TEXT NOT NULL,

    CONSTRAINT "Answer_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");