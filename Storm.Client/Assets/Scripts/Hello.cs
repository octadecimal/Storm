using UnityEngine;
using Storm.Core;

public class Hello : MonoBehaviour
{
  // Start is called once before the first execution of Update after the MonoBehaviour is created
  void Start()
  {
    Debug.Log(StormTest.Hello());
    Debug.Log(StormTest.Hello());
  }

  // Update is called once per frame
  void Update()
  {

  }
}
