import streamlit as st
from core import sagebrush_sniper

st.title("Sagebrush Sniper Trading Interface")
ticker = st.text_input("Ticker", "AAPL")
if st.button("Run Analysis"):
    data = sagebrush_sniper.get_data(ticker)
    st.line_chart(data["Close"])
    from sagebrush_archiver import TruthArchiver

archiver = TruthArchiver("sagebrush_audit")
archiver.add_entry("audit", "Started recovery of Sagebrush Sniper", proof="recovery_plan_executed")
