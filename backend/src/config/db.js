import mongoose from "mongoose";

export const connectDB = async () => {
    await mongoose.connect(process.env.MONGODB_CONNECTIONSTRING)
    .then(() => {
        console.log("Connected to MongoDB");
    })
    .catch((err) => {
        console.log(err.message);
        process.exit(1);
    });
}
