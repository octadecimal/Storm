using UnityEngine;
using UnityEngine.InputSystem;

public class ControllerDebugger : MonoBehaviour
{
  public InputActionAsset actions;

  public void Update()
  {
    var moveAction = actions.FindAction("Move");
    var value = moveAction.ReadValue<Vector2>();
    Debug.Log(value);
  }
}
