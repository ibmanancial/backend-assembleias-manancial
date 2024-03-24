import { 
    createActivity
} from "../Services/CreateActivityService.js";

export default {

    // Create a new activity
    async createManancialActivity(req, res) {
        try {
            const newActivity = req.body.activities;
            await createActivity(newActivity);
            return res.status(201).json({message: "Atividade cadastrada com sucesso"})
        } catch (e) {
            console.log("Erro ao cadastrar nova atividade ->", e)
            return res.status(500).json({message: "Erro ao salvar atividade"})
        }
    }
}