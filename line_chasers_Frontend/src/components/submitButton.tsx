import React from "react";
import { convertToObj } from "../data/dataHelper";

interface SubmitButtonProps {
    headers: string[];
    values: string[];
    onSubmit: (data: string) => void; // Callback to handle the JSON data
}

const SubmitButton: React.FC<SubmitButtonProps> = ({
    headers,
    values,
    onSubmit,
}) => {
    const handleClick = () => {
        // Convert headers and values into an object
        const obj = convertToObj(headers, values);

        // Convert the object to JSON
        const jsonData = JSON.stringify(obj);

        // Call the provided onSubmit function with the JSON data
        onSubmit(jsonData);
    };

    return (
        <button className="bg-green-500" onClick={handleClick}>
            Submit
        </button>
    );
};

export default SubmitButton;
