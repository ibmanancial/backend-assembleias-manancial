import { prismaClient } from "../utils/prismaClient.js";

export const createActivity = async (newActivity) => {
    try {
        const createdActivity = await prismaClient.manancialActivities.create({
          data: {
            name: newActivity.name,
            description: newActivity.description,
            local: newActivity.local,
            activity_date: newActivity.activity_date,
          },
        });
    
        return createdActivity;
        
      } catch (error) {
        throw error;
      }
};