# Booking Reviews Validation — LLM Topic & Sentiment Validation

This project verifies the quality of LLM-generated sentiment and topic classifications on hotel booking reviews.  
The pipeline compares original cleaned user texts with model-produced labels and evaluates:

- ✅ Sentiment correctness (Positive / Negative / Neutral)
- ✅ Topic volume distribution accuracy
- ✅ False matches, missed matches, & alignment quality
- ✅ Real vs model-generated category proportions

Although the validation logic can run headlessly, **Jupyter Notebook** is included for clarity and visual demonstration (charts, confusion matrix, summary metrics).  
It was used as a transparent way to explore results step-by-step during analysis.

---

## 🚀 Running with Docker (uv + Jupyter pre-installed)

### Build the image
```bash
docker build -t validation_test_case .
```

### Run container
> If port 8888 is busy, change to e.g. `8890:8888`
```bash
docker run -it --rm -p 8888:8888 -v $(pwd):/app validation_test_case bash
```

### Start Jupyter Notebook inside the container
```bash
uv run jupyter notebook --ip=0.0.0.0 --allow-root --NotebookApp.token=''
```

Open in browser:

```
http://localhost:8888
```
> **Note:** If using PyCharm/DataSpell, Jupyter may show a warning  
> about `jetTransient` metadata in `.ipynb` files.  
> This does not affect execution — simply click **"Trust Notebook"**.

