using UnityEngine;
using UnityEngine.InputSystem;

public class ControllerDebugger : MonoBehaviour
{
  public InputActionAsset actions;

  private Vector2 _previous;

  public void Update()
  {
    var moveAction = actions.FindAction("Move");
    var value = moveAction.ReadValue<Vector2>();

    if (_previous != value)
    {
      Debug.Log(value);
    }

    _previous = moveAction.ReadValue<Vector2>();
  }
}
