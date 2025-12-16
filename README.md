# 🤖 AI Data Analyst Agent (GPT-4.1 + LangChain + ReAct + FAISS)

An **AI-powered agent** for data analysis and visualization.  
Built with **FastAPI** and **Streamlit**, integrating **GPT-4.1 via LangChain**, automated **EDA**, and interactive **visualizations**.  

Upload your **CSV/Excel** files, generate **insights**, and ask questions in **natural language**.

---

## ✨ Features

- 🧠 Ask dataset questions via GPT-4.1 + LangChain  
- 📊 Automated EDA (profiling, correlations, distributions, time series)  
- 📈 Interactive visualizations (bar, scatter, line, heatmaps)  
- 📂 Secure file upload and data cleaning  
- 🐍 Safe Python REPL for DataFrame manipulation  
- ⚙️ Robustness with multi-threading and retries on LLM calls  

---

## 🧱 Tech Stack

| Layer        | Tool / Library                             |
|--------------|---------------------------------------------|
| LLM Engine   | GPT-4.1 via [LangChain](https://www.langchain.com) |
| Web UI       | [Streamlit](https://streamlit.io)           |
| Backend API  | [FastAPI](https://fastapi.tiangolo.com)     |
| Data Analysis| `pandas`, `ydata-profiling`, `sweetviz`, `autoviz` |
| Visualization| `plotly`, `matplotlib`, `seaborn`, `lux`    |
| Memory     | FAISS (chat history)                       |

---

## 📂 Project Structure

```
AI-Data-Analyst-Agent/
│── backend/          # FastAPI backend (data processing, APIs, LLM integration)
│── frontend/         # Streamlit frontend (UI, charts, dashboards)
│── tests/            # Unit tests (pytest)
│── data/             # Sample datasets + cleaned data
│── requirements.txt  # Dependencies
│── docker-compose.yml
│── README.md
│── .env      # Example environment variables
```
## 🖼️ Interface Preview

### 🏠 DataSense UI
<p align="center">
  <img src="agent.png" width="700" alt="DataSense" />
  
</p>
---

## 🚀 Installation

1. Clone the repository:
```bash
git clone https://github.com/your-username/AI-Data-Analyst-Agent.git
cd AI-Data-Analyst-Agent
```

2. Create a virtual environment:
```bash
python -m venv .venv
# Linux / Mac
source .venv/bin/activate
# Windows
.venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

---

## 🔑 Configuration

Create a `.env` file at the project root:

```env
# Token GitHub (NEVER COMMIT REAL TOKEN)
GITHUB_TOKEN=your_github_token_here

# LLM Model
MODEL_NAME=gpt-4.1

# GitHub Inference Endpoint
GITHUB_ENDPOINT=https://models.github.ai/inference

# Data paths
DATA_DIR=data
CLEAN_DIR=data/cleaned
CHAT_DB=data/chat_history.db
```

---

## 🏃 Run the Project

Start the **backend (FastAPI):**
```bash
uvicorn backend.main:app --reload
```

Start the **frontend (Streamlit):**
```bash
streamlit run frontend/main.py
```

---

## ✅ Tests

Run unit tests:
```bash
pytest tests/ -v
```

---

## 🐳 Docker Deployment (Optional)

Build and launch containers:
```bash
docker-compose build
docker-compose up
```

Stop services:
```bash
docker-compose down
```

Check logs:
```bash
docker-compose logs -f
```

⚠ From the frontend container, use `http://backend:8000` to reach the backend.

---

## 🧠 Usage Examples

- "Summarize this dataset in 5 key insights"  
- "Show correlations between numerical variables"  
- "Plot the distribution of customer ages"  
- "Detect anomalies in sales time series"  

---

## 🔧 Best Practices Applied

- ✅ Clear project structure (`backend/`, `frontend/`, `tests/`)  
- ✅ Error handling and logging  
- ✅ Unit testing with pytest  
- ✅ Reproducible documentation  

---

## 👩‍💻 Author

**[Oumaima Toufali](https://www.linkedin.com/in/oumaima-toufali)**  

---
