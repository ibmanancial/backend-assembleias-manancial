-- CreateTable
CREATE TABLE "ManancialMembers" (
    "member_id" SERIAL NOT NULL,
    "full_name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "role" INTEGER NOT NULL,
    "birth_date" TIMESTAMP(3) NOT NULL,
    "phone_number" TEXT NOT NULL,
    "entry_membership_date" TIMESTAMP(3) NOT NULL,
    "exit_membership_date" TIMESTAMP(3),

    CONSTRAINT "ManancialMembers_pkey" PRIMARY KEY ("member_id")
);

-- CreateTable
CREATE TABLE "ManancialMembersQualification" (
    "qualification_id" SERIAL NOT NULL,
    "occupation" TEXT NOT NULL,
    "role_church" TEXT NOT NULL,
    "marital_status" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "rg" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "member_id" INTEGER NOT NULL,

    CONSTRAINT "ManancialMembersQualification_pkey" PRIMARY KEY ("qualification_id")
);

CREATE TABLE "ManancialActivities" (
    "activity_id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "local" TEXT NOT NULL,
    "activity_date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ManancialActivities_pkey" PRIMARY KEY ("activity_id")
);

-- CreateTable
CREATE TABLE "LogsAplicacoes" (
    "id_log" SERIAL NOT NULL,
    "id_correlation" TEXT NOT NULL,
    "log_message" TEXT NOT NULL,
    "log_data" TIMESTAMP(3) NOT NULL,
    "environment" TEXT NOT NULL,
    "application" TEXT NOT NULL,
    "log_levek" TEXT NOT NULL,

    CONSTRAINT "LogsAplicacoes_pkey" PRIMARY KEY ("id_log")
);

-- CreateIndex
CREATE UNIQUE INDEX "ManancialMembersQualification_cpf_key" ON "ManancialMembersQualification"("cpf");

-- CreateIndex
CREATE UNIQUE INDEX "ManancialMembersQualification_rg_key" ON "ManancialMembersQualification"("rg");

-- CreateIndex
CREATE UNIQUE INDEX "ManancialMembers_email_key" ON "ManancialMembers"("email");

-- CreateIndex
CREATE UNIQUE INDEX "ManancialMembers_phone_key" ON "ManancialMembers"("phone_number");

-- CreateIndex
CREATE UNIQUE INDEX "ManancialMembersQualification_member_id_key" ON "ManancialMembersQualification"("member_id");

-- CreateIndex
CREATE UNIQUE INDEX "ManancialActivities_activity_date_key" ON "ManancialActivities"("activity_date");

-- AddForeignKey
ALTER TABLE "ManancialMembersQualification" ADD CONSTRAINT "ManancialMembersQualification_member_id_fkey" FOREIGN KEY ("member_id") REFERENCES "ManancialMembers"("member_id") ON DELETE RESTRICT ON UPDATE CASCADE;
