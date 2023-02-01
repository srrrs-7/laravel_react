import ReactDOM from "react-dom/client";

function App() {
    return (
        <div className="text-red-400">
            <p>Hello World</p>
        </div>
    )
}

const root = ReactDOM.createRoot(document.getElementById("app"));
root.render(<App />);